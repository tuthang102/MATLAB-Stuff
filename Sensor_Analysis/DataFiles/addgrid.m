function addgrid()
    legend('Sensor 1' ,'Sensor 2', 'Sensor 3', 'Sensor 4', 'Sensor 5')
    ax = gca;
    grid on
    box on
    ax.GridLineStyle = ':';
    ax.GridAlpha = 1;
end