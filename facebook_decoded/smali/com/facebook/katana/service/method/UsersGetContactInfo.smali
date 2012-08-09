.class public Lcom/facebook/katana/service/method/UsersGetContactInfo;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "UsersGetContactInfo.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookContactInfo;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 5
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 58
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 60
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v3, v1

    move v1, v2

    .line 65
    :goto_0
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v3, v4, :cond_2

    .line 66
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_1

    .line 67
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->t()I

    move-result v1

    .line 75
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v3

    goto :goto_0

    .line 70
    :cond_1
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v3, v4, :cond_0

    .line 71
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 77
    :cond_2
    if-eq v1, v2, :cond_6

    .line 78
    new-instance v2, Lcom/facebook/katana/model/FacebookApiException;

    invoke-direct {v2, v1, v0}, Lcom/facebook/katana/model/FacebookApiException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 82
    :cond_3
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_5

    .line 83
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 84
    :goto_2
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_6

    .line 86
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_4

    .line 87
    iget-object v0, p0, Lcom/facebook/katana/service/method/UsersGetContactInfo;->a:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/model/FacebookContactInfo;

    invoke-direct {v1, p1}, Lcom/facebook/katana/model/FacebookContactInfo;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    :cond_4
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_2

    .line 92
    :cond_5
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed JSON"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_6
    return-void
.end method
