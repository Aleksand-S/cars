import cv2
import datetime

class RTSPVideoWriterObject(object):

    def __init__(self, src=0):
        # Create a VideoCapture object
        self.capture = cv2.VideoCapture(src)

        # Default resolutions of the frame are obtained (system dependent)
        self.frame_width = int(self.capture.get(3))
        self.frame_height = int(self.capture.get(4))

        # Set up codec and output video settings
        self.codec = cv2.VideoWriter_fourcc('M', 'J', 'P', 'G')
        file_name = 'c_s_app/records/' + str(src).split('/')[-1] + '.avi'
        self.output_video = cv2.VideoWriter(file_name, self.codec, 25, (self.frame_width, self.frame_height))

        # Read the next frame from the stream in a different thread
        update = True
        count = 1
        while update:
            if self.capture.isOpened():
                (self.status, self.frame) = self.capture.read()
                update = self.status
                self.output_video.write(self.frame)
                # print(count, datetime.datetime.now(), update, src)
                count += 1
                if not update:
                    with open('c_s_app/records/video_done_list.txt', 'a') as the_file:
                        data = str(datetime.datetime.now()) + ' ' + file_name + '\n'
                        the_file.write(data)


def recorder(rtsp_stream_link):
    # rtsp_stream_link = 'rtsp://10.32.2.31:554/openUrl/Me09C3S?beginTime=20200406T120000&endTime=20200406T120100&playBackMode=1'
    RTSPVideoWriterObject(rtsp_stream_link)
