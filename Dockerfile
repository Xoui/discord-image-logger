FROM dorowu/ubuntu-desktop-lxde-vnc

# Expose port 6080 for VNC web access
EXPOSE 8080

# Set up shared memory for better performance
VOLUME /dev/shm:/dev/shm

# Start the VNC server
CMD ["supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]