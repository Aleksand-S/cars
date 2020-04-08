from c_s_app.models import *


def deleting_field_db():

    # # удаление из одной ячейки во всех объектах
    # res_objs = ResultDeepstream.objects.all()
    # for obj in res_objs:
    #     print('1', obj.car_obj)
    #     obj.car_obj = None
    #     obj.save()
    #     print('2', obj.car_obj)

    # удаление всех объектов из таблицы
    # Model.objects.all().delete()
    print('deleting func')

def random_add_car_to_results():
    # gen_objs = Generation.objects.all()
    for num in range(276, 412):
        gen_obj = Generation.objects.order_by('?').first()
        result_obj = ResultDeepstream.objects.get(pk=num)
        result_obj.car_obj = gen_obj
        result_obj.save()


