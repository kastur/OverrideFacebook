.class public Lcom/facebook/katana/model/FacebookPhotoComment;
.super Ljava/lang/Object;
.source "FacebookPhotoComment.java"


# instance fields
.field private a:J

.field private final b:Ljava/lang/String;

.field private final c:J

.field private d:Lcom/facebook/katana/model/FacebookProfile;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JJ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-wide p2, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->a:J

    .line 80
    iput-object p4, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->b:Ljava/lang/String;

    .line 81
    iput-wide p5, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->c:J

    .line 82
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v1, -0x1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v3, 0x0

    .line 37
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    move-object v5, v0

    move-object v0, v3

    move-wide v3, v1

    .line 40
    :goto_0
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_6

    .line 41
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_2

    .line 42
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v5

    .line 43
    const-string v6, "pid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 44
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-wide v7, v1

    move-object v2, v0

    move-wide v0, v7

    .line 58
    :goto_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    move-wide v7, v0

    move-object v0, v2

    move-wide v1, v7

    goto :goto_0

    .line 45
    :cond_0
    const-string v6, "body"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 46
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-wide v7, v1

    move-object v2, v0

    move-wide v0, v7

    .line 48
    goto :goto_1

    :cond_2
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_5

    .line 49
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v5

    .line 50
    const-string v6, "from"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 51
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v3

    move-wide v7, v1

    move-object v2, v0

    move-wide v0, v7

    goto :goto_1

    .line 52
    :cond_3
    const-string v6, "time"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 53
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v1

    move-wide v7, v1

    move-object v2, v0

    move-wide v0, v7

    goto :goto_1

    .line 54
    :cond_4
    const-string v6, "pcid"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 55
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->u()J

    :cond_5
    move-wide v7, v1

    move-object v2, v0

    move-wide v0, v7

    goto :goto_1

    .line 61
    :cond_6
    iput-wide v3, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->a:J

    .line 63
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->b:Ljava/lang/String;

    .line 64
    iput-wide v1, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->c:J

    .line 65
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->a:J

    return-wide v0
.end method

.method public final a(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 2
    .parameter

    .prologue
    .line 126
    iget-wide v0, p1, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->a:J

    .line 127
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->d:Lcom/facebook/katana/model/FacebookProfile;

    .line 128
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .locals 2

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->c:J

    return-wide v0
.end method

.method public final d()Lcom/facebook/katana/model/FacebookProfile;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhotoComment;->d:Lcom/facebook/katana/model/FacebookProfile;

    return-object v0
.end method
