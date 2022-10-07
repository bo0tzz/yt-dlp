FROM linuxserver/ffmpeg:version-4.4-cli

RUN apt update && apt install -y python3

COPY yt-dlp .
RUN chmod +x yt-dlp

ENTRYPOINT [ "./yt-dlp" ]