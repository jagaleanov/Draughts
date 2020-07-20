% Define campos adyacentes
% isNext(+From,+To).
%
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
isNext([1,2],[2,1]).
isNext([1,2],[2,3]).
isNext([1,4],[2,3]).
isNext([1,4],[2,5]).
isNext([1,6],[2,5]).
isNext([1,6],[2,7]).
isNext([1,8],[2,7]).
isNext([1,8],[2,9]).
isNext([1,10],[2,9]).

isNext([2,1],[3,2]).
isNext([2,3],[3,2]).
isNext([2,3],[3,4]).
isNext([2,5],[3,4]).
isNext([2,5],[3,6]).
isNext([2,7],[3,6]).
isNext([2,7],[3,8]).
isNext([2,9],[3,8]).
isNext([2,9],[3,10]).

isNext([3,2],[4,1]).
isNext([3,2],[4,3]).
isNext([3,4],[4,3]).
isNext([3,4],[4,5]).
isNext([3,6],[4,5]).
isNext([3,6],[4,7]).
isNext([3,8],[4,7]).
isNext([3,8],[4,9]).
isNext([3,10],[4,9]).

isNext([4,1],[5,2]).
isNext([4,3],[5,2]).
isNext([4,3],[5,4]).
isNext([4,5],[5,4]).
isNext([4,5],[5,6]).
isNext([4,7],[5,6]).
isNext([4,7],[5,8]).
isNext([4,9],[5,8]).
isNext([4,9],[5,10]).

isNext([5,2],[6,1]).
isNext([5,2],[6,3]).
isNext([5,4],[6,3]).
isNext([5,4],[6,5]).
isNext([5,6],[6,5]).
isNext([5,6],[6,7]).
isNext([5,8],[6,7]).
isNext([5,8],[6,9]).
isNext([5,10],[6,9]).

isNext([6,1],[7,2]).
isNext([6,3],[7,2]).
isNext([6,3],[7,4]).
isNext([6,5],[7,4]).
isNext([6,5],[7,6]).
isNext([6,7],[7,6]).
isNext([6,7],[7,8]).
isNext([6,9],[7,8]).
isNext([6,9],[7,10]).

isNext([7,2],[8,1]).
isNext([7,2],[8,3]).
isNext([7,4],[8,3]).
isNext([7,4],[8,5]).
isNext([7,6],[8,5]).
isNext([7,6],[8,7]).
isNext([7,8],[8,7]).
isNext([7,8],[8,9]).
isNext([7,10],[8,9]).

isNext([8,1],[9,2]).
isNext([8,3],[9,2]).
isNext([8,3],[9,4]).
isNext([8,5],[9,4]).
isNext([8,5],[9,6]).
isNext([8,7],[9,6]).
isNext([8,7],[9,8]).
isNext([8,9],[9,8]).
isNext([8,9],[9,10]).

isNext([9,2],[10,1]).
isNext([9,2],[10,3]).
isNext([9,4],[10,3]).
isNext([9,4],[10,5]).
isNext([9,6],[10,5]).
isNext([9,6],[10,7]).
isNext([9,8],[10,7]).
isNext([9,8],[10,9]).
isNext([9,10],[10,9]).


% Define campos en línea en el tablero
% isLine(Trail).
%
% @param Trail: Lista de posiciones continuas en línea en formato [Fila, Campo].
isLine([[1,2],[2,1]]).
isLine([[1,4],[2,3],[3,2],[4,1]]).
isLine([[1,6],[2,5],[3,4],[4,3],[5,2],[6,1]]).
isLine([[1,8],[2,7],[3,6],[4,5],[5,4],[6,3],[7,2],[8,1]]).
isLine([[1,10],[2,9],[3,8],[4,7],[5,6],[6,5],[7,4],[8,3],[9,2],[10,1]]).
isLine([[3,10],[4,9],[5,8],[6,7],[7,6],[8,5],[9,4],[10,3]]).
isLine([[5,10],[6,9],[7,8],[8,7],[9,6],[10,5]]).
isLine([[7,10],[8,9],[9,8],[108,7]]).
isLine([[9,10],[10,9]]).

isLine([[1,8],[2,9],[3,10]]).
isLine([[1,6],[2,7],[3,8],[4,9],[5,10]]).
isLine([[1,4],[2,5],[3,6],[4,7],[5,8],[6,9],[7,10]]).
isLine([[1,2],[2,3],[3,4],[4,5],[5,6],[6,7],[7,8],[8,9],[9,10]]).
isLine([[2,1],[3,2],[4,3],[5,4],[6,5],[7,6],[8,7],[9,8],[10,9]]).
isLine([[4,1],[5,2],[6,3],[7,4],[8,5],[9,6],[10,7]]).
isLine([[6,1],[7,2],[8,3],[9,4],[10,5]]).
isLine([[8,1],[9,2],[10,3]]).


% Define un campo esta vacio
% isEmpty(Piece).
%
% @param Piece: Contenido de un campo en el tablero (a,aa,b,bb,+);
isEmpty('+').


% Define reyes
% isKing(Piece).
%
% @param Piece: Contenido de un campo en el tablero (a,aa,b,bb,+);
isKing('aa').
isKing('bb').


% Define peónes
% isPawn(Piece).
%
% @param Piece: Contenido de un campo en el tablero (a,aa,b,bb,+);
isPawn('a').
isPawn('b').


% Define coronación
% turnsTo(+Piece1,+Piece2).
%
% @param Piece1: Contenido de un campo en el tablero (a,aa,b,bb,+);
% @param Piece2: Contenido de un campo en el tablero (a,aa,b,bb,+);
turnsTo('a','aa') .
turnsTo('b','bb') .


% Define jugador y sus fichas
% pieceFromPlayer(+Piece,+Player).
%
% @param Player: Jugador (1,2)
% @param Piece: Ficha en el tablero (a,aa,b,bb,+);
pieceFromPlayer('a',1).
pieceFromPlayer('aa',1).
pieceFromPlayer('b',2).
pieceFromPlayer('bb',2).


% Define el jugador oponente
% oponentPlayer(+Player,+oponentPlayer).
%
% @param Player: Jugador (1,2)
% @param Player: Jugador oponente (1,2)
oponentPlayer(1,2).
oponentPlayer(2,1).


% Define campos adyacentes inversos
% isNextInverse(+From,+To).
%
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
isNextInverse(From,To) :- isNext(To,From).


% Define el movimiento hacia adelante
% isNextTo(+Piece,+From,+To).
%
% @param Piece: Ficha en el tablero (a,aa,b,bb,+);
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
isNextTo(Piece,From,To) :- 
    pieceFromPlayer(Piece,1),
    isNextInverse(From,To).
isNextTo(Piece,From,To) :- 
    pieceFromPlayer(Piece,2),
    isNext(From,To).


% Define el movimiento hacia atras
% isNextTo(+Piece,+From,+To).
%
% @param Piece: Ficha en el tablero (a,aa,b,bb,+);
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
isPreviousTo(Piece,From,To) :- isNextTo(Piece,To,From).


% Define adversarios
% isEnemy(+Piece1,+Piece2).
%
% @param Piece1: Ficha en el tablero (a,aa,b,bb,+);
% @param Piece2: Ficha en el tablero (a,aa,b,bb,+);
isEnemy(Piece1,Piece2) :-
    pieceFromPlayer(Piece1,Player1),
    pieceFromPlayer(Piece2,Player2),
    Player1 \== Player2.


% Buscar el indice de un elemento en una lista
% indexOf(-Element,-List,+Index).
%
% @param Element: Elemento en la lista
% @param List: Lista a analizar
% @param Index: Indice del elemento en la lista
indexOf(Element, [Element|_], 1).
indexOf(Element, [_|Tail], Index):-
    indexOf(Element, Tail, Index1),
    Index is Index1 + 1.


% Buscar un el contenido de un campo en el tablero
% positionOf(-Board, -Piece, +Position).
%
% @param Board: Lista de elementos en el tablero
% @param Piece: Contenido de un campo en el tablero (a,aa,b,bb,+);
% @param Position: Posicion en el tablero en formato [Fila, Campo].
positionOf(Board, Piece, [Row|[Field]]) :-
    indexOf(Piece,Board,Place),
    X is mod(Place,10),
    (
        (
            X == 0,
            Row is div(Place,10),
            Field is 10
        );
        (
            X > 0,
            Row is div(Place,10) + 1,
            Field is mod(Place,10)
        )
    ).


% Buscar un elemento a partir de un indice en una lista
% elementAt(-List,-Index,+Element).
%
% @param List: Lista para buscar
% @param Index: Posición del elemento
% @param Element: Elemento en la lista
elementAt([Element|_],1,Element).
elementAt([_|List],Index,Element) :-
    Index > 1,
    Index1 is Index - 1,
    elementAt(List,Index1,Element).


% Buscar un el contenido de un campo en el tablero
% contentAt(-Board, -Position, +Piece).
%
% @param Board: Lista de elementos en el tablero
% @param Position: Posicion en el tablero en formato [Fila, Campo].
% @param Piece: Contenido de un campo en el tablero (a,aa,b,bb,+);
contentAt(Board, [Row|[Field]], Piece) :-
    Place is ((Row - 1) * 10) + Field,
    elementAt(Board,Place,Piece).


% Buscar una jugada de ataque
% positionOfPlayer(-Board, +Player, +Position).
%
% @param Board: Lista de elementos en el tablero
% @param Player: Jugador (1,2)
% @param Position: Posicion en el tablero en formato [Fila, Campo].
positionOfPlayer(Board,Player,Position) :-
    pieceFromPlayer(Piece,Player),
    positionOf(Board,Piece,Position).


% Define movimiento de ataque de rey
% replace(-List, -Index,-Element,+NewList).
%
% @param List: Lista a analizar
% @param Index: Indice del elemento en la lista
replace(List, Index, Element, NewList) :- 
    replace(List, Index, Element, NewList, 1). 

replace([_|Tail], Index, Element, [Element|Tail], Index).
replace([Head|Tail], Index, Element, [Head|Tail1], Counter) :- 
    NewCounter is Counter + 1,
    replace(Tail, Index, Element, Tail1, NewCounter). 


% Buscar un el contenido de un campo en el tablero
% changePiece(-Board, -Position, +Piece, +NewBoard).
%
% @param Board: Lista de elementos en el tablero
% @param Position: Posicion en el tablero en formato [Fila, Campo].
% @param Piece: Contenido de un campo en el tablero (a,aa,b,bb,+);
changePiece(Board, [Row|[Field]], Piece, NewBoard) :-
    Place is ((Row - 1) * 10) + Field,
    replace(Board, Place, Piece, NewBoard).


% Modifica el tablero con el movimiento de una ficha
% move(-Board,-From,-To,+NewBoard).
%
% @param Board: Lista de elementos en el tablero
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
% @param NewBoard: El tablero modificado.
move(Board,From,To,NewBoard) :-
    contentAt(Board, From, Piece),
    changePiece(Board, From, '+', Board1),
    changePiece(Board1, To, Piece, NewBoard),
    !.


% Modifica el tablero eliminando una ficha
% capture(-Board,-Position,+NewBoard).
%
% @param Board: Lista de elementos en el tablero
% @param Position: Posicion del tablero en formato [Fila, Campo].
% @param Board: El tablero modificado
capture(Board,Position,NewBoard) :-
    changePiece(Board, Position, '+', NewBoard),
    !.


% Modifica el tablero revisando y coronando una ficha
% crown(-Board,-Position,+NewBoard).
%
% @param Board: Lista de elementos en el tablero
% @param Position: Posicion del tablero en formato [Fila, Campo].
% @param NewBoard: El tablero modificado.
crown(Board,Position,NewBoard) :-
    contentAt(Board, Position, Piece),
    isPawn(Piece),
    not(isNextTo(Piece,Position,_)),
    turnsTo(Piece,Piece1),
    changePiece(Board, Position, Piece1, NewBoard),
    !.


% Encontrar un camino recto
% straightTrail(-From,-TemporalTrail,+Trail).
%
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param TemporalTrail: Lista de posiciones continuas en línea en formato [Fila, Campo].
% @param Trail: Lista de posiciones continuas en línea en formato [Fila, Campo].
straightTrail(From,[From|Trail1],[From|Trail1]).
straightTrail(From,[To|Trail1],Trail) :-
    (
        isNextInverse(From1,To);
        isNext(From1,To)
    ),
    isLine(Line),
    member(From,Line),
    member(To,Line), 
    not(member(From1,[To|Trail1])),
    straightTrail(From,[From1,To|Trail1],Trail).
    

% Buscar un camino valido
% simpleTrail(-From,-To,+Trail).
%
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
% @param Trail: Lista de posiciones continuas en línea en formato [Fila, Campo].
simpleTrail(From,To,Trail) :-
    straightTrail(From,[To],Trail).


% Validar si un camino se encuentra vacio
% isEmptyTrail(-Board,+Trail).
%
% @param Board: Lista de elementos en el tablero
% @param Trail: Lista de posiciones continuas en línea en formato [Fila, Campo].
isEmptyTrail(_,[]).
isEmptyTrail(Board,[Position|Tail]) :- 

    contentAt(Board,Position,Piece),
   % write('\n Piece is '),write(Piece),write('\n'),
    isEmpty(Piece), 
    isEmptyTrail(Board,Tail).


% Define movimiento simple de peón
% pawnMovement(-Board,-From,+To).
%
% @param Board: Lista de elementos en el tablero
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
pawnMovement(Board,From,To) :- 
    contentAt(Board, From, Piece),
    isPawn(Piece),
    isNextTo(Piece,From,To),
    contentAt(Board, To, PieceTo),
    isEmpty(PieceTo).	

% Define movimiento simple de rey
% kingMovement(-Board,-From,+To).
%
% @param Board: Lista de listas con las fichas del tablero
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
kingMovement(Board,From,To) :- 
    contentAt(Board, From, Piece),
    isKing(Piece),
    simpleTrail(From,To,[_|Trail]),
    isEmptyTrail(Board,Trail),
    From \== To.


% Define movimiento de ataque de peón
% pawnAttack(-Board,-From,+To,+EnemyPosition).
%
% @param Board: Lista de elementos en el tablero
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
% @param EnemyPosition: Posicion del enemigo en el tablero en formato [Fila, Campo].
pawnAttack(Board,From,To,EnemyPosition) :- 
    contentAt(Board, From, Piece),
    isPawn(Piece),
    (
        (isNextTo(Piece,From,EnemyPosition),isNextTo(Piece,EnemyPosition,To));
        (isPreviousTo(Piece,From,EnemyPosition),isPreviousTo(Piece,EnemyPosition,To))
    ),
    isLine(Line),
    member(From,Line),
    member(EnemyPosition,Line),
    member(To,Line),
    contentAt(Board, EnemyPosition, EnemyPiece),
    isEnemy(Piece,EnemyPiece),
    contentAt(Board, To, PieceTo),
    isEmpty(PieceTo).


% Define movimiento de ataque de rey
% kingAttack(-Board,-From,+To,+EnemyPosition).
%
% @param Board: Lista de elementos en el tablero
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
% @param EnemyPosition: Posicion del enemigo en el tablero en formato [Fila, Campo].
kingAttack(Board,From,To,EnemyPosition) :-
    contentAt(Board, From, Piece),
    isKing(Piece),
    simpleTrail(From,To,[_|Trail]),
    member(PreTo,Trail),
    isNextTo(Piece,PreTo,To),
    simpleTrail(From,PreTo,[_|TrailForEnemy]),
    member(EnemyPosition,TrailForEnemy),
    isEnemy(Piece,EnemyPiece),
    contentAt(Board, EnemyPosition, EnemyPiece),
    simpleTrail(EnemyPosition,To,[_|TrailAfterEnemy]),
    isEmptyTrail(Board,TrailAfterEnemy),
    isNextTo(Piece,PreEnemyPosition,EnemyPosition), 
    simpleTrail(From,PreEnemyPosition,[_|TrailToEnemy]),
    isEmptyTrail(Board,TrailToEnemy).
kingAttack(Board,From,To,EnemyPosition) :-
    contentAt(Board, From, Piece),
    isKing(Piece),
    simpleTrail(From,To,[_|Trail]),
    member(PreTo,Trail),
    isPreviousTo(Piece,PreTo,To),
    simpleTrail(From,PreTo,[_|TrailForEnemy]),
    member(EnemyPosition,TrailForEnemy),
    isEnemy(Piece,EnemyPiece),
    contentAt(Board, EnemyPosition, EnemyPiece),
    simpleTrail(EnemyPosition,To,[_|TrailAfterEnemy]),
    isEmptyTrail(Board,TrailAfterEnemy),
    isPreviousTo(Piece,PreEnemyPosition,EnemyPosition), 
    simpleTrail(From,PreEnemyPosition,[_|TrailToEnemy]),
    isEmptyTrail(Board,TrailToEnemy).


% Busca si existe una jugada de ataque, de preferencia la mayor captuas y retorna el contador de capturas
% playerAttack(-Board, +Player,+From,+To,+EnemyPosition,+Count).
%
% @param Board: Lista de elementos en el tablero
% @param Player: Jugador (1,2)
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
% @param EnemyPosition: Posicion del enemigo en el tablero en formato [Fila, Campo].
% @param Count: Contador de fichas a capturar restantes.
playerAttack(Board, Player,From,To,EnemyPosition,Count) :-
    positionOfPlayer(Board, Player, From),
    (
        pawnAttack(Board,From,To,EnemyPosition);
        kingAttack(Board,From,To,EnemyPosition)
    ),
    %write('ITS TRUE'),
    move(Board,From,To,TempBoard),
    capture(TempBoard,EnemyPosition,NewBoard),
    playerAttack(NewBoard, Player,To,_,_,Counter),
    Count is Counter +1.
playerAttack(Board, Player,From,To,EnemyPosition,1) :-
    positionOfPlayer(Board, Player, From),
    (
        pawnAttack(Board,From,To,EnemyPosition);
        kingAttack(Board,From,To,EnemyPosition)
    ),
    move(Board,From,To,TempBoard),
    capture(TempBoard,EnemyPosition,NewBoard),
    not(playerAttack(NewBoard, Player,To,_,_,_)).


% Busca si existe una jugada de ataque, de preferencia la mayor captuas y retorna el contador de capturas
% forcedAttack(-Board, +Player,+From,+To).
%
% @param Board: Lista de elementos en el tablero
% @param Player: Jugador (1,2)
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
forcedAttack(Board, Player,From,To) :- 
    findall(Count,playerAttack(Board, Player,From,To,EnemyPosition,Count),Counts),
    max_list(Counts,MaxEats),
    playerAttack(Board, Player,From,To,EnemyPosition,MaxEats).


% Valida si un movimiento es legal
% isLegalMovement(-Board,-From,+To).
%
% @param Board: Lista de elementos en el tablero
% @param From: Posicion inicial en el tablero en formato [Fila, Campo].
% @param To: Posicion final en el tablero en formato [Fila, Campo].
isLegalMovement(Board,From,To) :-
    contentAt(Board, From, Piece),
    pieceFromPlayer(Piece,Player),
    forcedAttack(Board, Player,From,ToForced),
    To == ToForced.

isLegalMovement(Board,From,To) :-
    contentAt(Board, From, Piece),
    pieceFromPlayer(Piece,Player),
    not(forcedAttack(Board, Player,_,_)),
    (
        pawnMovement(Board,From,To);
        kingMovement(Board,From,To)
    ).
    

% Busca si existe un movimiento posible por parte de un jugador.
% existMovement(-Board,+Player).
%
% @param Board: Lista de elementos en el tablero
% @param Player: Jugador (1,2)
existMovement(Board, Player) :-
    positionOfPlayer(Board, Player, From),
    (
        pawnAttack(Board,From,_,_);
        kingAttack(Board,From,_,_);
        pawnMovement(Board,From,_);
        kingMovement(Board,From,_)
    ),
    !.
    
    
% Inicia el string de respuesta JSON.
% initJSON(JSON).
%
% @param JSON String de respuesta en formato JSON
initJSON('').


% Convierte una lista en un string entre comillas separado por comas que puede ser añadido al JSON.
% listToString(List,String).
%
% @param JSON String de respuesta en formato JSON
listToString(List,String) :-
    atomic_list_concat(List, ',', Atom), atom_string(Atom, Str),
    concat('"',Str,Str2),
    concat(Str2,'"',String).
    
    
% Ingresa una variable al string JSON.
% writeVarJSON(JSON,Index,Value,NewJSON).
%
% @param JSON Entrada del String JSON
% @param Index Nombre de la variable a ingresar
% @param Value Valor de la variable a ingresar
% @param NewJSON String con la variable introducida
writeVarJSON(JSON,Index,Value,NewJSON) :- 
    (
        (
            JSON \== '',
            concat(JSON,',',JSON1a),
            concat(JSON1a,'"',JSON1)
        );
        (
            JSON == '',
            concat(JSON,'"',JSON1)
        )
    ),
    concat(JSON1,Index,JSON2),
    concat(JSON2,'":',JSON3),
    concat(JSON3,Value,NewJSON).
    
    
% Finailza el Strin JSON y lo imprime para luego ser recopilado por PHP
% printJSON(JSON).
%
% @param JSON String de respuesta en formato JSON
printJSON(JSON) :-
    concat('{',JSON,JSON1),
    concat(JSON1,'}',NewJSON),
    write(NewJSON).
    
    
% Procesa un archivo
% processPHP(JSON).
%
% @param JSON String de respuesta en formato JSON
processPHP(Board,From,To) :-
    isLegalMovement(Board,From,To),
    (
        pawnMovement(Board,From,To);
        kingMovement(Board,From,To)
    ),
    move(Board,From,To,MovedBoard),
    initJSON(JSON),
    writeVarJSON(JSON,'legal',1,JSON1),
    writeVarJSON(JSON1,'changeTurn',1,JSON2),
    (
        (
            crown(MovedBoard,To,CrownedBoard),
            listToString(CrownedBoard,NewBoard),
            writeVarJSON(JSON2,'board',NewBoard,JSON3),
            writeVarJSON(JSON3,'crowned',1,FinalJSON),

            contentAt(Board, To, Piece),
            pieceFromPlayer(Piece,Player),
            oponentPlayer(Player,Opponent),
            ( 
                (
                    existMovement(CrownedBoard, Opponent),
                    writeVarJSON(JSON2,'winner',0,JSON3)
                );
                (
                    not(existMovement(CrownedBoard, Opponent)),
                    writeVarJSON(JSON2,'winner',1,JSON3)
                )
                
            )
        );
        (
            listToString(MovedBoard,NewBoard),
            writeVarJSON(JSON2,'board',NewBoard,FinalJSON)
        )
    ),
    printJSON(FinalJSON).

processPHP(Board,From,To) :-
    isLegalMovement(Board,From,To),
    (
        pawnAttack(Board,From,To,EnemyPosition);
        kingAttack(Board,From,To,EnemyPosition)
    ),
    contentAt(Board, From, Piece),
    pieceFromPlayer(Piece,Player),
    move(Board,From,To,MovedBoard),
    capture(MovedBoard,EnemyPosition,CapturedBoard),
    forcedAttack(CapturedBoard, Player,To,_),
    initJSON(JSON),
    writeVarJSON(JSON,'legal',1,JSON1),
    writeVarJSON(JSON1,'captured',1,JSON2),
    listToString(CapturedBoard,NewBoard),
    writeVarJSON(JSON2,'board',NewBoard,JSON3),
    oponentPlayer(Player,Opponent),
    (
        (
            existMovement(CapturedBoard, Opponent),
            writeVarJSON(JSON3,'winner',0,FinalJSON)
        );
        (
            not(existMovement(CapturedBoard, Opponent)),
            writeVarJSON(JSON3,'winner',1,FinalJSON)
        )  
    ),
    printJSON(FinalJSON).

processPHP(Board,From,To) :-
    isLegalMovement(Board,From,To),
    (
        pawnAttack(Board,From,To,EnemyPosition);
        kingAttack(Board,From,To,EnemyPosition)
    ),
    move(Board,From,To,MovedBoard),
    capture(MovedBoard,EnemyPosition,CapturedBoard),
    initJSON(JSON),
    writeVarJSON(JSON,'legal',1,JSON1),
    writeVarJSON(JSON1,'captured',1,JSON2),
    writeVarJSON(JSON2,'changeTurn',1,JSON3),
    contentAt(MovedBoard, To, Piece),
    %write(Piece),
    pieceFromPlayer(Piece,Player),
    (
        (
            crown(CapturedBoard,To,CrownedBoard),
            listToString(CrownedBoard,NewBoard),
            writeVarJSON(JSON3,'board',NewBoard,JSON4),
            writeVarJSON(JSON4,'crowned',1,JSON5),
            
            oponentPlayer(Player,Opponent),
            (
                (
                    existMovement(CapturedBoard, Opponent),
                    writeVarJSON(JSON5,'winner',0,FinalJSON)
                );
                (
                    not(existMovement(CapturedBoard, Opponent)),
                    writeVarJSON(JSON5,'winner',1,FinalJSON)
                )  
            )

        );
        (
            not(crown(CapturedBoard,To,_)),
            listToString(CapturedBoard,NewBoard),
            writeVarJSON(JSON3,'board',NewBoard,JSON4),
            
            
            oponentPlayer(Player,Opponent),
            (
                (
                    existMovement(CapturedBoard, Opponent),
                    writeVarJSON(JSON4,'winner',0,FinalJSON)
                );
                (
                    not(existMovement(CapturedBoard, Opponent)),
                    writeVarJSON(JSON4,'winner',1,FinalJSON)
                )  
            )
        )
    ),
    printJSON(FinalJSON).

processPHP(Board,From,To) :-
    not(isLegalMovement(Board,From,To)),
    initJSON(JSON),
    writeVarJSON(JSON,'legal',0,FinalJSON),
    printJSON(FinalJSON).