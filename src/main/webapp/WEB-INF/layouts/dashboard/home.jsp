<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="container">
    <h2 style="text-align: center" class="bg-success">Up Comming Product List</h2>

    <input id="myInput" type="text" placeholder="Search.." class="form-control">
    <br>
    <table class="table table-bordered table-striped">
        <thead>
            <tr>
                <th>ID</th>
                <th>Product_Name</th>
                <th>Category</th>
                <th>Band</th>
            </tr>
        </thead>
        <tbody id="myTable">
            <tr>
                <td>1</td>
                <td>Nova Refrigerator</td>
                <td>Refrigerator</td>
                <td>Aristo Nava</td>
            </tr>
            <tr>
                <td>2</td>
                <td>AireCool</td>
                <td>Ac</td>
                <td>AirePool</td>
            </tr>
            <tr>
                <td>3</td>
                <td>Coolhit</td>
                <td>Waterfirter</td>
                <td>Angel</td>
            </tr>
            <tr>
                <td>4</td>
                <td>SmartTv</td>
                <td>TV</td>
                <td>Singer</td>
            </tr>
            <tr>
                <td>5</td>
                <td>LCD Monitor</td>
                <td>Monitor</td>
                <td>Samsung</td>
            </tr>
        </tbody>
    </table>
</div>

<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>

<script>
    $(document).ready(function () {
        $("#myInput").on("keyup", function () {
            var value = $(this).val().toLowerCase();
            $("#myTable tr").filter(function () {
                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
            });
        });
    });
</script>