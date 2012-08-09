.class public Lcom/facebook/katana/service/method/MailboxGetThreadMessages;
.super Lcom/facebook/katana/service/method/FqlQuery;
.source "MailboxGetThreadMessages.java"


# instance fields
.field private final a:I

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookMailboxThreadMessage;",
            ">;"
        }
    .end annotation
.end field

.field private final g:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;IJIILcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-static {p5, p6, v0, v1}, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->a(JII)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p9

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/method/FqlQuery;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 55
    iput p4, p0, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->a:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->f:Ljava/util/List;

    .line 57
    iput-wide p5, p0, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->g:J

    .line 58
    return-void
.end method

.method private static a(JII)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 124
    if-ne p2, v0, :cond_0

    .line 125
    const/4 p2, 0x0

    .line 127
    :cond_0
    if-ne p3, v0, :cond_1

    .line 128
    const/16 p3, 0x64

    .line 130
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT message_id,author_id,created_time,body,attachment FROM message WHERE (thread_id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") ORDER BY created_time DESC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIMIT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 8

    .prologue
    .line 88
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Landroid/content/ContentValues;

    .line 89
    const/4 v0, 0x0

    .line 91
    iget-object v1, p0, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;

    .line 92
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    aput-object v4, v2, v1

    .line 93
    aget-object v4, v2, v1

    .line 94
    add-int/lit8 v1, v1, 0x1

    .line 96
    const-string v5, "folder"

    iget v6, p0, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->a:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 97
    const-string v5, "tid"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->a()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string v5, "mid"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->b()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string v5, "author_id"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->c()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 100
    const-string v5, "sent"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->d()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 101
    const-string v5, "body"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->o:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    .line 105
    return-void
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 4
    .parameter

    .prologue
    .line 65
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 67
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_0

    .line 68
    new-instance v0, Lcom/facebook/katana/model/FacebookApiException;

    invoke-direct {v0, p1}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v0

    .line 69
    :cond_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_3

    .line 70
    :goto_0
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v1, :cond_2

    .line 71
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v1, :cond_1

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->f:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;

    iget-wide v2, p0, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->g:J

    invoke-direct {v1, p1, v2, v3}, Lcom/facebook/katana/model/FacebookMailboxThreadMessage;-><init>(Lorg/codehaus/jackson/JsonParser;J)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_1
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/facebook/katana/service/method/MailboxGetThreadMessages;->h()V

    return-void

    .line 78
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed JSON"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
