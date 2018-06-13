<h1>เพิ่มประเภทรถ</h1>

<div class="row">
    <div class="col-md-12">

        <div class="card">
            <div class="card-header">
                เพิ่มประเภทรถ
            </div>
            <div class="card-body">
                
                <form action="index.php?menu=category-car-addDB" method="post">
                    <div class="form-group">
                        <label>ชื่อประเภทรถ</label>
                        <input type="text" class="form-control" name="category_car_name" required>
                    </div>
                    <div class="form-group">
                        <label>ค่าตรวจสภาพรถ</label>
                        <input type="text" class="form-control" name="price_check_car" required>
                    </div>
                    <div class="form-group">
                        <label>ค่าบริการต่อภาษี</label>
                        <input type="text" class="form-control" name="price_service" required>
                    </div>
                    <div class="form-group">
                        <label>ค่าภาษีรถ</label>
                        <input type="text" class="form-control" name="price_car_tax" required>
                    </div>
                    <div class="form-group">
                        <label>ค่าเบี้ย พรบ.</label>
                        <input type="text" class="form-control" name="price_atc" required>
                    </div>
                    <button type="submit" class="btn btn-success">บันทึก</button>
                </form>

            </div>
        </div>

    </div>
</div>