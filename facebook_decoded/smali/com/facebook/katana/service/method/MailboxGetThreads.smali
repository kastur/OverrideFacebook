.class public Lcom/facebook/katana/service/method/MailboxGetThreads;
.super Lcom/facebook/katana/service/method/FqlQuery;
.source "MailboxGetThreads.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IIILcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-static {p4, p5, p6}, Lcom/facebook/katana/service/method/MailboxGetThreads;->a(III)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/MailboxGetThreads;->a:Ljava/util/List;

    .line 48
    return-void
.end method

.method private static a(III)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 83
    if-ne p1, v0, :cond_0

    .line 84
    const/4 p1, 0x0

    .line 86
    :cond_0
    if-ne p2, v0, :cond_1

    .line 87
    const/16 p2, 0x14

    .line 90
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT thread_id,subject,recipients,updated_time,message_count,snippet,snippet_author,unread,object_id FROM thread WHERE (folder_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 57
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 58
    new-instance v0, Lcom/facebook/katana/model/FacebookApiException;

    invoke-direct {v0, p1}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    .line 59
    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookApiException;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 60
    throw v0

    .line 62
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_2

    .line 63
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_3

    .line 64
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxGetThreads;->a:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/model/FacebookMailboxThread;

    invoke-direct {v1, p1}, Lcom/facebook/katana/model/FacebookMailboxThread;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 70
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed JSON"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    return-void
.end method

.method final h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThread;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxGetThreads;->a:Ljava/util/List;

    return-object v0
.end method
