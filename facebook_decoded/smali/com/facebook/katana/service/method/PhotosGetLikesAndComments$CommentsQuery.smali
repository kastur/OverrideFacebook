.class Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;
.super Lcom/facebook/katana/service/method/FqlQuery;
.source "PhotosGetLikesAndComments.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 125
    invoke-static {p4, p5}, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;->a(J)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;)I
    .locals 1
    .parameter

    .prologue
    .line 110
    iget v0, p0, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;->a:I

    return v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT id FROM comment WHERE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "object_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;->a:I

    .line 133
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 134
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_0

    .line 135
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unexpected JSON response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_0
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2

    .line 138
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 139
    iget v0, p0, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/service/method/PhotosGetLikesAndComments$CommentsQuery;->a:I

    .line 137
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 142
    :cond_2
    return-void
.end method
