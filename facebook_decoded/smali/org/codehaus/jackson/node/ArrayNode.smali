.class public final Lorg/codehaus/jackson/node/ArrayNode;
.super Lorg/codehaus/jackson/node/ContainerNode;
.source "ArrayNode.java"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V
    .locals 0
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/node/ContainerNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    return-void
.end method

.method private C()V
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->B()Lorg/codehaus/jackson/node/NullNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->b(Lorg/codehaus/jackson/JsonNode;)V

    .line 333
    return-void
.end method

.method private a(Ljava/util/ArrayList;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 607
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 608
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->x()I

    move-result v0

    if-eq v0, v3, :cond_0

    move v0, v1

    .line 616
    :goto_0
    return v0

    :cond_0
    move v2, v1

    .line 611
    :goto_1
    if-ge v2, v3, :cond_2

    .line 612
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 613
    goto :goto_0

    .line 611
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 616
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private b(Lorg/codehaus/jackson/JsonNode;)V
    .locals 1
    .parameter

    .prologue
    .line 579
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    .line 582
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    return-void
.end method


# virtual methods
.method public final a(I)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .parameter

    .prologue
    .line 47
    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 50
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 78
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->a()V

    .line 79
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 86
    check-cast v0, Lorg/codehaus/jackson/node/BaseJsonNode;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/BaseJsonNode;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonGenerator;->b()V

    .line 90
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonGenerator;Lorg/codehaus/jackson/map/SerializerProvider;Lorg/codehaus/jackson/map/TypeSerializer;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p3, p0, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->c(Ljava/lang/Object;Lorg/codehaus/jackson/JsonGenerator;)V

    .line 98
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 100
    check-cast v0, Lorg/codehaus/jackson/node/BaseJsonNode;

    invoke-virtual {v0, p1}, Lorg/codehaus/jackson/node/BaseJsonNode;->a(Lorg/codehaus/jackson/JsonGenerator;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p3, p1}, Lorg/codehaus/jackson/map/TypeSerializer;->c(Lorg/codehaus/jackson/JsonGenerator;)V

    .line 104
    return-void
.end method

.method public final a(Lorg/codehaus/jackson/JsonNode;)V
    .locals 0
    .parameter

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->B()Lorg/codehaus/jackson/node/NullNode;

    move-result-object p1

    .line 203
    :cond_0
    invoke-direct {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->b(Lorg/codehaus/jackson/JsonNode;)V

    .line 204
    return-void
.end method

.method public final c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;
    .locals 1
    .parameter

    .prologue
    .line 57
    invoke-static {}, Lorg/codehaus/jackson/node/MissingNode;->B()Lorg/codehaus/jackson/node/MissingNode;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 370
    if-nez p1, :cond_0

    .line 371
    invoke-direct {p0}, Lorg/codehaus/jackson/node/ArrayNode;->C()V

    .line 375
    :goto_0
    return-void

    .line 373
    :cond_0
    invoke-virtual {p0, p1}, Lorg/codehaus/jackson/node/ArrayNode;->e(Ljava/lang/String;)Lorg/codehaus/jackson/node/TextNode;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/node/ArrayNode;->b(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x1

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 516
    if-ne p1, p0, :cond_1

    .line 525
    :cond_0
    :goto_0
    return v0

    .line 517
    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    .line 518
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    .line 519
    goto :goto_0

    .line 521
    :cond_3
    check-cast p1, Lorg/codehaus/jackson/node/ArrayNode;

    .line 522
    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    .line 523
    :cond_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/node/ArrayNode;->x()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 525
    :cond_5
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-direct {p1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->a(Ljava/util/ArrayList;)Z

    move-result v0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 3

    .prologue
    .line 532
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 533
    const/4 v1, 0x1

    .line 542
    :cond_0
    return v1

    .line 535
    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 536
    iget-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 537
    if-eqz v0, :cond_2

    .line 538
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 549
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/codehaus/jackson/node/ArrayNode;->x()I

    move-result v0

    shl-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 550
    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 551
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 552
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 553
    if-lez v1, :cond_0

    .line 554
    const/16 v0, 0x2c

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 556
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 559
    :cond_1
    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 560
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final y()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/codehaus/jackson/JsonNode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;->a()Lorg/codehaus/jackson/node/ContainerNode$NoNodesIterator;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/node/ArrayNode;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method
