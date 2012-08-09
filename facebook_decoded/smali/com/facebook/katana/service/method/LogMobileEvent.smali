.class public Lcom/facebook/katana/service/method/LogMobileEvent;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "LogMobileEvent.java"

# interfaces
.implements Lcom/facebook/katana/service/method/ApiMethodCallback;


# instance fields
.field private a:Z

.field private f:Z

.field private g:Lcom/facebook/katana/service/method/LogMobileEvent$LogMobileEventListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/katana/service/method/LogMobileEvent$LogMobileEventListener;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x0

    .line 123
    const-string v3, "POST"

    const-string v4, "logging.mobileevent"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    move-object v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 29
    iput-boolean v7, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->a:Z

    .line 30
    iput-boolean v7, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->f:Z

    .line 31
    iput-object v2, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->g:Lcom/facebook/katana/service/method/LogMobileEvent$LogMobileEventListener;

    .line 125
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->e:Ljava/util/Map;

    const-string v1, "access_token"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->e:Ljava/util/Map;

    const-string v1, "format"

    const-string v3, "JSON"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    if-eqz p5, :cond_0

    .line 129
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->e:Ljava/util/Map;

    const-string v1, "message"

    invoke-static {p4}, Lcom/facebook/katana/service/method/LogMobileEvent;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->e:Ljava/util/Map;

    const-string v1, "compressed"

    const-string v3, "1"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :goto_0
    iput-object v2, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->g:Lcom/facebook/katana/service/method/LogMobileEvent$LogMobileEventListener;

    .line 136
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->e:Ljava/util/Map;

    const-string v1, "message"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 52
    invoke-static {p0, v7}, Lcom/facebook/katana/binding/AppSession;->b(Landroid/content/Context;Z)Lcom/facebook/katana/binding/AppSession;

    move-result-object v1

    .line 53
    if-nez v1, :cond_0

    move v0, v7

    .line 65
    :goto_0
    return v0

    .line 56
    :cond_0
    invoke-static {p0}, Lcom/facebook/katana/Constants$URL;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 58
    :try_start_0
    new-instance v0, Lcom/facebook/katana/service/method/LogMobileEvent;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/AppSession;->a()Lcom/facebook/katana/model/FacebookSessionInfo;

    move-result-object v1

    iget-object v2, v1, Lcom/facebook/katana/model/FacebookSessionInfo;->oAuthToken:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/LogMobileEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/facebook/katana/service/method/LogMobileEvent$LogMobileEventListener;)V

    .line 61
    invoke-direct {v0}, Lcom/facebook/katana/service/method/LogMobileEvent;->h()V

    .line 62
    iget-boolean v0, v0, Lcom/facebook/katana/service/method/LogMobileEvent;->f:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    const-string v1, "LogMobileEvent"

    const-string v2, "failed sending event log"

    invoke-static {v1, v2, v0}, Lcom/facebook/katana/util/ErrorReporting;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v7

    .line 65
    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 163
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/facebook/apache/http/util/EncodingUtils;->a(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 165
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 166
    new-instance v2, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v2, v1}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 167
    invoke-virtual {v2, v0}, Ljava/util/zip/DeflaterOutputStream;->write([B)V

    .line 168
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 169
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 170
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 171
    invoke-virtual {v2}, Ljava/util/zip/DeflaterOutputStream;->close()V

    .line 172
    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/facebook/orca/common/util/Base64;->a([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->a:Z

    .line 141
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/LogMobileEvent;->a()V

    .line 142
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .prologue
    .line 150
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->o:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/method/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/katana/service/method/LogMobileEvent;->d()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/x-www-form-urlencoded"

    iget-object v5, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 154
    iget-boolean v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->a:Z

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->run()V

    .line 159
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->start()V

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 194
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->g:Lcom/facebook/katana/service/method/LogMobileEvent$LogMobileEventListener;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->g:Lcom/facebook/katana/service/method/LogMobileEvent$LogMobileEventListener;

    iget-boolean v1, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->f:Z

    invoke-interface {v0}, Lcom/facebook/katana/service/method/LogMobileEvent$LogMobileEventListener;->a()V

    .line 198
    :cond_0
    return-void
.end method

.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 2
    .parameter

    .prologue
    .line 185
    sget-object v0, Lcom/facebook/katana/util/jsonmirror/types/JMBase;->a:Lcom/facebook/katana/util/jsonmirror/types/JMBoolean;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 187
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->f:Z

    .line 189
    :cond_0
    return-void
.end method

.method protected final d()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/facebook/katana/service/method/LogMobileEvent;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/facebook/katana/util/URLQueryBuilder;->a(Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method
