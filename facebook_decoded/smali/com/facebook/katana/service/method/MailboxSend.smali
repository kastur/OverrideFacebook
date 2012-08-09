.class public Lcom/facebook/katana/service/method/MailboxSend;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "MailboxSend.java"


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private final f:Lcom/facebook/katana/model/FacebookUser;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/method/MailboxSend;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/model/FacebookUser;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookUser;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/method/ServiceOperationListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    const-string v3, "GET"

    const-string v4, "mailbox.send"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p8

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 68
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSend;->e:Ljava/util/Map;

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

    .line 69
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSend;->e:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSend;->e:Ljava/util/Map;

    const-string v1, "to"

    invoke-static {p5}, Lcom/facebook/katana/service/method/MailboxSend;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSend;->e:Ljava/util/Map;

    const-string v1, "subject"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object v0, p0, Lcom/facebook/katana/service/method/MailboxSend;->e:Ljava/util/Map;

    const-string v1, "body"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    iput-object p4, p0, Lcom/facebook/katana/service/method/MailboxSend;->f:Lcom/facebook/katana/model/FacebookUser;

    .line 75
    iput-object p5, p0, Lcom/facebook/katana/service/method/MailboxSend;->g:Ljava/util/List;

    .line 76
    return-void
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 79
    new-instance v2, Ljava/lang/StringBuffer;

    const/16 v0, 0x40

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 80
    const/4 v0, 0x1

    .line 81
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 82
    if-nez v1, :cond_0

    .line 83
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    :goto_1
    iget-wide v4, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 85
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(J)V
    .locals 17
    .parameter

    .prologue
    .line 132
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long v10, v1, v3

    .line 133
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/method/MailboxSend;->o:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/method/MailboxSend;->e:Ljava/util/Map;

    const-string v2, "body"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/katana/service/method/Utils;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/method/MailboxSend;->g:Ljava/util/List;

    invoke-static {v1}, Lcom/facebook/katana/service/method/MailboxSend;->b(Ljava/util/List;)Ljava/util/List;

    move-result-object v14

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/method/MailboxSend;->g:Ljava/util/List;

    invoke-static {v1}, Lcom/facebook/katana/service/method/MailboxSend;->c(Ljava/util/List;)Ljava/util/Map;

    move-result-object v16

    .line 139
    new-instance v1, Lcom/facebook/katana/model/FacebookMailboxThread;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/MailboxSend;->e:Ljava/util/Map;

    const-string v3, "subject"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-wide/16 v12, 0x0

    move-wide/from16 v2, p1

    invoke-direct/range {v1 .. v14}, Lcom/facebook/katana/model/FacebookMailboxThread;-><init>(JLjava/lang/String;Ljava/lang/String;JIIJJLjava/util/List;)V

    .line 142
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/method/MailboxSend;->f:Lcom/facebook/katana/model/FacebookUser;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/katana/service/method/MailboxSend;->o:Landroid/content/Context;

    const v6, 0x7f0b024f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v5, v16

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/katana/model/FacebookMailboxThread;->a(IJLjava/util/Map;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v7

    .line 146
    sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->a:Landroid/net/Uri;

    invoke-virtual {v15, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 149
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 150
    const-string v1, "folder"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 151
    const-string v1, "tid"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 152
    const-string v1, "mid"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 153
    const-string v1, "author_id"

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/MailboxSend;->f:Lcom/facebook/katana/model/FacebookUser;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    const-string v1, "sent"

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 155
    const-string v2, "body"

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/facebook/katana/service/method/MailboxSend;->e:Ljava/util/Map;

    const-string v3, "body"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v1, Lcom/facebook/katana/provider/MailboxProvider;->d:Landroid/net/Uri;

    invoke-virtual {v15, v1, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/facebook/katana/service/method/MailboxSend;->f:Lcom/facebook/katana/model/FacebookUser;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->f:Landroid/net/Uri;

    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 161
    sget-object v3, Lcom/facebook/katana/service/method/MailboxSend;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v15

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 162
    if-eqz v1, :cond_1

    .line 163
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_0

    .line 165
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 166
    const-string v2, "id"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/method/MailboxSend;->f:Lcom/facebook/katana/model/FacebookUser;

    iget-wide v3, v3, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string v2, "display_name"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/method/MailboxSend;->f:Lcom/facebook/katana/model/FacebookUser;

    invoke-virtual {v3}, Lcom/facebook/katana/model/FacebookUser;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v2, "profile_image_url"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/katana/service/method/MailboxSend;->f:Lcom/facebook/katana/model/FacebookUser;

    iget-object v3, v3, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    const-string v2, "type"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    sget-object v2, Lcom/facebook/katana/provider/MailboxProvider;->e:Landroid/net/Uri;

    invoke-virtual {v15, v2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 172
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_1
    return-void
.end method

.method private static b(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 113
    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 115
    :cond_0
    return-object v1
.end method

.method private static c(Ljava/util/List;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 119
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookProfile;

    .line 121
    iget-wide v3, v0, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 123
    :cond_0
    return-object v1
.end method


# virtual methods
.method protected final a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 3
    .parameter

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;->b()Ljava/lang/String;

    move-result-object v0

    .line 100
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Lcom/facebook/katana/model/FacebookApiException;

    sget-object v2, Lcom/facebook/katana/service/method/MailboxSend;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v2, v0}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/facebook/katana/model/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    throw v1

    .line 105
    :cond_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 106
    invoke-direct {p0, v0, v1}, Lcom/facebook/katana/service/method/MailboxSend;->a(J)V

    .line 108
    return-void
.end method
