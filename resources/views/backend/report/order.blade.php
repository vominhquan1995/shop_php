@extends('backend.master')
@section('reportoder','active')
@section('hoadon', 'active')
@section('content')
<section class="content">
    <style>
    .with-transitions {
        min-height: 500px;
        width: 100%;
    }
</style>
<div class="row">

    
        
            <div class="col-lg-12">
                <div class="row">
                <div class="form-group">
                    <label class="control-label col-md-2">Từ ngày</label>
                    <div class="col-md-4">
                        <div class="input-group date">
                            
                            <input type="text" class="form-control" id="fromDate" name="fromDate" required value="{!! date('m-d-Y') !!}">
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                        </div>
                        
                    </div>
                    <label class="control-label col-md-2">Đến ngày</label>
                    <div class="col-md-4">
                        <div class="input-group date">
                           <input type="text" class="form-control" id="toDate" name="toDate" required value="{!! date('m-d-Y') !!}">
                            <span class="input-group-addon"><i class="fa fa-calendar"></i></span>
                        </div>
                       
                    </div>
                </div>
                </div>
                
                <div class="row" style="margin-top: 15px">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <div class="col-md-2"></div>
                            <button class="btn btn-primary" name="flag" value="1" type="button" onclick="btnSubmit()" id="btnTim">Tìm kiếm</button>
                        </div>
                    </div>
                </div>

            </div>
        </div>

        <!--<div class="row">
            <div class="col-lg-12">
                    <div class="col-md-4"></div>
                    <button class="btn btn-primary" name="flag" value="1" type="submit">Ngày</button>
                    <button class="btn btn-primary" name="flag" value="2"  type="submit">Tháng</button>
                    <button class="btn btn-primary" name="flag" value="3"  type="submit">Năm</button>
                </div>
           
        </div>-->

        <div class="row">
                    <div class="col-lg-12 ">
                        <div id="linechart_material" class="with-transitions">

                        </div>
                    </div>
                </div>
            </div>

    
   
   </div>

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script>

    function chart(dataChart){
        google.charts.load('current', { 'packages': ['corechart'], 'language': 'vi' });
     google.charts.setOnLoadCallback(drawChart);

     function drawChart() {
        var list = dataChart;
        var listData = [];
        $.each(list,
            function(key, value) {
                listData.push([new Date(value.Year, value.Month - 1, value.Day), value.Quantity]);
            });

        var data = new google.visualization.DataTable();
        data.addColumn('date', 'Ngày');
        data.addColumn('number', 'SL đơn hàng');


        data.addRows(listData);

        var options = {
            //chart: {
            //    title: 'Thống kê thu chi'

            //},
            title: 'Thống kê đơn hàng',
            vAxis: {
                //format: 'currency'

            },
            hAxis: {
               
                //format: 'd/M/yyyy'
            },


            theme: 'material',
            pointSize: 5,
            legend: { position: 'bottom' }
        };
      

        //var chart = new google.charts.Line(document.getElementById('linechart_material'));
        var chart = new google.visualization.LineChart(document.getElementById('linechart_material'));

        //chart.draw(data, google.charts.Line.convertOptions(options));
        
        chart.draw(data, options);
    }
    }

     

    

     $(function () {
        $('.input-group.date').datetimepicker({
            locale: 'vi',
            format: 'MM/DD/YYYY',
            extraFormats: ["MM/YYYY"],
            defaultDate: false

        });

       
    })


    function btnSubmit(){
        var fromDate = $("#fromDate").val();
            var toDate = $("#toDate").val();
            $.post('{!! url("admin/report/order") !!}',{fromDate : fromDate,toDate : toDate},function(data){
                    chart(data);
            });
    }

    $(window)
        .resize(function() {
            drawChart();

        });

</script>
   


   
@stop</section> 