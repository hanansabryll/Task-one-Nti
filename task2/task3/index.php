<?php include "includes/header.php"; ?>
<div class="p-5 mb-4 bg-primary text-white rounded-3"><h1>PHP Assignment (3)</h1><p>Solutions for the 12 PHP tasks</p></div>
<div class="row g-3">
<?php
$tasks = ["If / Else","Functions","Function With Array","Search In Array","Bubble Sort","Maximum Number","Counting","Random Password","Boolean Values","Sorting","Same Values","GET / POST Form"];
for ($i=1; $i<=12; $i++): ?>
<div class="col-md-6 col-lg-4"><div class="card p-3 h-100"><h5><?php echo $i." - ".$tasks[$i-1]; ?></h5><a class="btn btn-outline-primary mt-auto" href="pages/task<?php echo $i; ?>.php">Open Task</a></div></div>
<?php endfor; ?>
</div><?php include "includes/footer.php"; ?>