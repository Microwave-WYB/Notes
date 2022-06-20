# Dijkstra's Algorithm

Dijkstra's algorithm allows us to find the shortest path between any two vertices of a graph

---

## Idea

```mermaid
graph LR
    V1((0))
    V2((inf))
    V3((inf))
    V4((inf))
    V5((inf))
    V6((inf))

    V1 -->|4| V2
    V1 -->|4| V3
    V2 -->|2| V3
    V3 -->|3| V4
    V3 -->|1| V5
    V3 -->|6| V6
    V4 -->|2| V6
    V5 -->|3| V6
```

---

```mermaid
graph LR
    V1((0))
    V2((0+4=4))
    V3((0+4=4))
    V4((inf))
    V5((inf))
    V6((inf))

    V1 ==>|4| V2
    V1 ==>|4| V3
    V2 -->|2| V3
    V3 -->|3| V4
    V3 -->|1| V5
    V3 -->|6| V6
    V4 -->|2| V6
    V5 -->|3| V6
```

---

```mermaid
graph LR
    V1((0))
    V2((4))
    V3((4+2>4))
    V4((inf))
    V5((inf))
    V6((inf))

    V1 ==>|4| V2
    V1 ==>|4| V3
    V2 -.->|2| V3
    V3 -->|3| V4
    V3 -->|1| V5
    V3 -->|6| V6
    V4 -->|2| V6
    V5 -->|3| V6
```

---

```mermaid
graph LR
    V1((0))
    V2((4))
    V3((4))
    V4((4+3=7))
    V5((4+1=5))
    V6((4+6=10))

    V1 ==>|4| V2
    V1 ==>|4| V3
    V2 -.->|2| V3
    V3 ==>|3| V4
    V3 ==>|1| V5
    V3 ==>|6| V6
    V4 -->|2| V6
    V5 -->|3| V6
```

---

```mermaid
graph LR
    V1((0))
    V2((4))
    V3((4))
    V4((7))
    V5((5))
    V6((5+3<10))

    V1 ==>|4| V2
    V1 ==>|4| V3
    V2 -.->|2| V3
    V3 ==>|3| V4
    V3 ==>|1| V5
    V3 -.->|6| V6
    V4 -->|2| V6
    V5 ==>|3| V6
```

---

```mermaid
graph LR
    V1((0))
    V2((4))
    V3((4))
    V4((7))
    V5((5))
    V6((7+2>8))

    V1 ==>|4| V2
    V1 ==>|4| V3
    V2 -.->|2| V3
    V3 ==>|3| V4
    V3 ==>|1| V5
    V3 -.->|6| V6
    V4 -.->|2| V6
    V5 ==>|3| V6
```

---

```mermaid
graph LR
    V1((0))
    V2((4))
    V3((4))
    V4((7))
    V5((5))
    V6((8))

    V1 ==>|4| V2
    V1 ==>|4| V3
    V2 -.->|2| V3
    V3 ==>|3| V4
    V3 ==>|1| V5
    V3 -.->|6| V6
    V4 -.->|2| V6
    V5 ==>|3| V6
```

---

## Pseudocode
Implementation of Dijkstra's Algorithm using Priority Queue:

```python
function dijkstra(Graph G, Start S):
    Priority Queue Q
    for each vertex V in G:
        distance[V] := infinity
        previous[V] := infinity
        if V != S then add V to Q

    while Q is not empty:
        U := min(Q)
        for each unvisited neighbor V of U:
            temp_distance := distance[U] + edge_weight(U, V)
            if temp_distance < distance[V]:
                distance[V] := temp_distance
                previous[V] := U
    return distance[], previous[]
```

---

## Complexity:
Let $V$ be the number of vertices:
1. Naive Implementation
    - $O(V^2)$
    - $\Omega(V^2)$
    - $\Theta(V^2)$
2. Binary Heap + Priority Queue
    - $O(E\log V)$
    - $\Omega(E\log V)$
    - $\Theta(E\log V)$
3. Fibonacci Heap + Priority Queue
    - WTF?

## References:
()[https://iq.opengenus.org/time-and-space-complexity-of-dijkstra-algorithm/]
()[https://www.programiz.com/dsa/dijkstra-algorithm]
