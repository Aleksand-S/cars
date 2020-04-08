from c_s_app.models import *
import csv
import os

def data_to_db():

    file_name = '10full_columns.csv'
    pwd = os.path.dirname(__file__)
    file_path = pwd + '/' + file_name

    list_f = []
    with open(file_path, 'r', newline='') as csvfile:
        reader = csv.DictReader(csvfile)

        for row in reader:
            folder_name = row['Folder_name']
            if folder_name == '':
                folder_name = None

            mark = row['Mark']
            if mark == '':
                mark = None

            model = row['Model']
            if model == '':
                model = None

            gen = row['Generation']
            if gen == '':
                gen = None

            mark_obj = Mark.objects.get(name=mark)  # получаем объект Марки
            mark_pk = int(mark_obj.pk)

#           из БД получаем список моделей для данной марки. Фильтруем на начиличе модели в списке из excel
            list_models_objs = Model.objects.all().filter(mark=mark_pk).filter(name=model)
            if len(list_models_objs) == 1:  # если Model уже есть в БД (длина списка = 1)
                # print('------------------ WARNING!!! START ---------------------')
                # print(len(list_models_objs), 'TAK NIE DOLZHNO BYC!!! DOLZHNO BYC = 0')
                # print(model, mark, gen, folder_name)
                # print('------------------ WARNING!!! FINISH ---------------------')
                for model_element in list_models_objs:
                    model_pk = model_element.pk
                    model_obj = model_element
            if len(list_models_objs) == 0:  # если Model нет в БД (длина списка = 0)
                model_obj = Model.objects.create(name=model, mark=mark_obj)  # создаем объект Модели
                model_pk = model_obj.pk
            else:
                print('------------------ WARNING!!! START ---------------------')
                print(len(list_models_objs), 'TAK NIE DOLZHNO BYC!!! MOZHET BYC = 0 libo 1')
                print(model, mark, gen, folder_name)
                print('------------------ WARNING!!! FINISH ---------------------')


#           получаем pk для gen из GenerationList
            genlist_obj = GenerationList.objects.get(name=gen)
            genlist_pk = genlist_obj.pk

#           из БД получаем список поколений для конкретной Марки и Модели. Фильтруем на наличие модели в списке из excel
            list_gens_objs = Generation.objects.all().filter(model=model_pk).filter(name=genlist_pk)
            if len(list_gens_objs) == 1:  # если уже есть в БД (длина списка = 1)
                print('------------------ WARNING!!! START ---------------------')
                print(len(list_gens_objs), 'TAK NIE DOLZHNO BYC!!! DOLZHNO BYC = 0')
                print(model, mark, gen, folder_name)
                print('------------------ WARNING!!! FINISH ---------------------')
                for gen_element in list_gens_objs:
                    gen_pk = gen_element.pk
                    print('---------------------------- WARNING START ---------------')
                    print('bylo: ', gen_element.path)
                    gen_element.path = folder_name
                    print('stalo: ', gen_element.path)
                    print('---------------------------- WARNING FINISH ---------------')
                    gen_element.save()
            if len(list_gens_objs) == 0:  # если нет в БД (длина списка = 0)
                new_generation_obj = Generation.objects.create(model=model_obj, name=genlist_obj, path=folder_name)  # создаем объект Generation
                print('Added gen: ', mark, model, gen, folder_name)
            else:
                print('------------------ WARNING!!! START ---------------------')
                print(len(list_gens_objs), 'TAK NIE DOLZHNO BYC!!! MOZHET BYC = 0 libo 1')
                print(model, mark, gen, folder_name)
                print('------------------ WARNING!!! FINISH ---------------------')


            # ПРОВЕРКА НА РАЗНИЦУ ДВУХ СПИСКОВ
    #         list_f.append(folder_name)
    # gen_obj = Generation.objects.all()
    # list_db = [elem.path for elem in gen_obj]
    # print(len(list_f), len(list_db))
    # print(set(list_f) - set(list_db))