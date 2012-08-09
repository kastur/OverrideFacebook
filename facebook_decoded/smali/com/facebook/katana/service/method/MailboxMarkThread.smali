.class public Lcom/facebook/katana/service/method/MailboxMarkThread;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "MailboxMarkThread.java"


# instance fields
.field private final a:Z

.field private final f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;JZLcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 47
    const-string v3, "GET"

    if-eqz p6, :cond_0

    const-string v4, "mailbox.markRead"

    :goto_0
    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 51
    const-string v0, "folder"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->f:I

    .line 54
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->e:Ljava/util/Map;

    const-string v1, "call_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->e:Ljava/util/Map;

    const-string v1, "tid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-boolean p6, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->a:Z

    .line 59
    return-void

    .line 47
    :cond_0
    const-string v4, "mailbox.markUnread"

    goto :goto_0
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 70
    const/16 v0, 0x7b

    invoke-virtual {p1, v0}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/facebook/katana/model/FacebookApiException;

    sget-object v1, Lcom/facebook/katana/service/method/MailboxMarkThread;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v1, p1}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v0

    .line 75
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 76
    const-string v4, "unread_count"

    iget-boolean v0, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->a:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->e:Ljava/util/Map;

    const-string v4, "tid"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    iget-object v4, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->o:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 81
    iget v5, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->f:I

    invoke-static {v5}, Lcom/facebook/katana/provider/MailboxProvider;->b(I)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 83
    invoke-virtual {v4, v5, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 88
    iget v5, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->f:I

    if-nez v5, :cond_4

    move v1, v2

    .line 98
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .line 99
    invoke-static {v1}, Lcom/facebook/katana/provider/MailboxProvider;->b(I)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 102
    invoke-virtual {v4, v0, v3, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 104
    :cond_2
    return-void

    :cond_3
    move v0, v2

    .line 76
    goto :goto_0

    .line 91
    :cond_4
    iget v5, p0, Lcom/facebook/katana/service/method/MailboxMarkThread;->f:I

    if-eq v2, v5, :cond_1

    move v2, v1

    .line 96
    goto :goto_1
.end method
