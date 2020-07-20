<div id="res_ajax">
</div>
<div class="container">
	<h1>Draughts</h1>
	<h2>Damas internacionales</h2>
</div>
<div class="container">
	<div class="row">
		<div class="col-3">
			<table class="table table-sm">
				<thead class="thead-dark">
					<tr>
						<th colspan="2">Turno</th>
					</tr>
				</thead>
				<tbody class="">
					<tr>
						<td id="turnIndicator1" class="bg-success table-dark">
							<strong>Jugador 1</strong>
						</td>
						<td id="turnIndicator2" class="notInTurn">
							<strong>Jugador 2</strong>
						</td>
					</tr>
				</tbody>
				<thead class="thead-dark">
					<tr>
						<th colspan="2">Fichas capturadas</th>
					</tr>
				</thead>
				<tbody class="">
					<tr>
						<td class="bg-danger table-dark"><strong id="counterMarker1">0</strong></td>
						<td class="bg-primary table-dark"><strong id="counterMarker2">0</strong></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="col-9">

			<table id="board" class="">
				<tr>
					<th></th>
					<th>1</th>
					<th>2</th>
					<th>3</th>
					<th>4</th>
					<th>5</th>
					<th>6</th>
					<th>7</th>
					<th>8</th>
					<th>9</th>
					<th>10</th>
				</tr>
				<?php
				foreach ( $board as $i => $row ) {
					?>
				<tr>
					<th>
						<?=$i+1?>
					</th>
					<?php
					foreach ( $row as $j => $column ) {
						?>
					<td id="field<?=$i?><?=$j?>" class="field <?=$column['color']?>_field">
						<div id="piece<?=$i?><?=$j?>" class="piece"></div>
					</td>
					<?php
					}
					?>
				</tr>
				<?php
				}
				?>
			</table>
		</div>
	</div>
</div>