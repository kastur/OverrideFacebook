.class public Lorg/codehaus/jackson/util/JsonParserSequence;
.super Lorg/codehaus/jackson/util/JsonParserDelegate;
.source "JsonParserSequence.java"


# instance fields
.field private d:[Lorg/codehaus/jackson/JsonParser;

.field private e:I


# direct methods
.method private constructor <init>([Lorg/codehaus/jackson/JsonParser;)V
    .locals 1
    .parameter

    .prologue
    .line 40
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/JsonParserDelegate;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    .line 41
    iput-object p1, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->d:[Lorg/codehaus/jackson/JsonParser;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->e:I

    .line 43
    return-void
.end method

.method private A()Z
    .locals 3

    .prologue
    .line 144
    iget v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->e:I

    iget-object v1, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->d:[Lorg/codehaus/jackson/JsonParser;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 145
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 147
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->d:[Lorg/codehaus/jackson/JsonParser;

    iget v1, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->e:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->c:Lorg/codehaus/jackson/JsonParser;

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;Lorg/codehaus/jackson/JsonParser;)Lorg/codehaus/jackson/util/JsonParserSequence;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    instance-of v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;

    if-nez v0, :cond_0

    instance-of v0, p1, Lorg/codehaus/jackson/util/JsonParserSequence;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/codehaus/jackson/util/JsonParserSequence;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/codehaus/jackson/JsonParser;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/util/JsonParserSequence;-><init>([Lorg/codehaus/jackson/JsonParser;)V

    .line 71
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 61
    instance-of v1, p0, Lorg/codehaus/jackson/util/JsonParserSequence;

    if-eqz v1, :cond_1

    .line 62
    check-cast p0, Lorg/codehaus/jackson/util/JsonParserSequence;

    invoke-direct {p0, v0}, Lorg/codehaus/jackson/util/JsonParserSequence;->a(Ljava/util/List;)V

    .line 66
    :goto_1
    instance-of v1, p1, Lorg/codehaus/jackson/util/JsonParserSequence;

    if-eqz v1, :cond_2

    .line 67
    check-cast p1, Lorg/codehaus/jackson/util/JsonParserSequence;

    invoke-direct {p1, v0}, Lorg/codehaus/jackson/util/JsonParserSequence;->a(Ljava/util/List;)V

    .line 71
    :goto_2
    new-instance v1, Lorg/codehaus/jackson/util/JsonParserSequence;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/codehaus/jackson/JsonParser;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/util/JsonParserSequence;-><init>([Lorg/codehaus/jackson/JsonParser;)V

    move-object v0, v1

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/codehaus/jackson/JsonParser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->e:I

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->d:[Lorg/codehaus/jackson/JsonParser;

    array-length v2, v1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 77
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->d:[Lorg/codehaus/jackson/JsonParser;

    aget-object v0, v0, v1

    .line 78
    instance-of v3, v0, Lorg/codehaus/jackson/util/JsonParserSequence;

    if-eqz v3, :cond_0

    .line 79
    check-cast v0, Lorg/codehaus/jackson/util/JsonParserSequence;

    invoke-direct {v0, p1}, Lorg/codehaus/jackson/util/JsonParserSequence;->a(Ljava/util/List;)V

    .line 76
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 84
    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lorg/codehaus/jackson/JsonToken;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_0

    .line 110
    :goto_0
    return-object v0

    .line 106
    :cond_0
    invoke-direct {p0}, Lorg/codehaus/jackson/util/JsonParserSequence;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    goto :goto_0

    .line 110
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 97
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/util/JsonParserSequence;->c:Lorg/codehaus/jackson/JsonParser;

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->close()V

    .line 98
    invoke-direct {p0}, Lorg/codehaus/jackson/util/JsonParserSequence;->A()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void
.end method
