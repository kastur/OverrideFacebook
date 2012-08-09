.class public Lcom/facebook/katana/service/method/AuthLogin;
.super Lcom/facebook/katana/service/method/ApiMethod;
.source "AuthLogin.java"


# instance fields
.field private a:Lcom/facebook/katana/model/FacebookSessionInfo;

.field private final f:Lcom/facebook/katana/service/method/ServiceOperationListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 169
    const-string v3, "GET"

    const-string v4, "auth.login"

    invoke-static {p1}, Lcom/facebook/katana/Constants$URL;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/method/ApiMethod;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 172
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->e:Ljava/util/Map;

    const-string v1, "email"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->e:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    if-eqz p5, :cond_0

    .line 175
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->e:Ljava/util/Map;

    const-string v1, "credentials_type"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->e:Ljava/util/Map;

    const-string v1, "generate_session_cookies"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v0, "machine_id"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/facebook/katana/provider/KeyValueManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v0}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->e:Ljava/util/Map;

    const-string v1, "generate_machine_id"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_0
    new-instance v0, Lcom/facebook/katana/service/method/AuthLogin$LoginListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/katana/service/method/AuthLogin$LoginListener;-><init>(Lcom/facebook/katana/service/method/AuthLogin;B)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    .line 190
    iput-object p6, p0, Lcom/facebook/katana/service/method/AuthLogin;->f:Lcom/facebook/katana/service/method/ServiceOperationListener;

    .line 191
    return-void

    .line 185
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/service/method/AuthLogin;->e:Ljava/util/Map;

    const-string v2, "machine_id"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic a(Lcom/facebook/katana/service/method/AuthLogin;)Lcom/facebook/katana/service/method/ServiceOperationListener;
    .locals 1
    .parameter

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->f:Lcom/facebook/katana/service/method/ServiceOperationListener;

    return-object v0
.end method


# virtual methods
.method protected final a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 5
    .parameter

    .prologue
    .line 207
    const-class v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;

    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;

    .line 209
    iget v1, v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->mErrorCode:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 210
    iget-object v1, v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->errorData:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    new-instance v1, Lcom/facebook/katana/model/FacebookApiException;

    iget v2, v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->mErrorCode:I

    iget-object v0, v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->mErrorMsg:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/facebook/katana/model/FacebookApiException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 213
    :cond_0
    new-instance v1, Lcom/facebook/katana/model/FacebookApiException;

    iget v2, v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->mErrorCode:I

    iget-object v3, v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->mErrorMsg:Ljava/lang/String;

    iget-object v0, v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->errorData:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0}, Lcom/facebook/katana/model/FacebookApiException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_1
    iget-object v1, v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->sessionKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-wide v1, v0, Lcom/facebook/katana/service/method/AuthLogin$FacebookApiSessionInfo;->userId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 217
    iput-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->a:Lcom/facebook/katana/model/FacebookSessionInfo;

    .line 221
    iget-object v1, p0, Lcom/facebook/katana/service/method/AuthLogin;->a:Lcom/facebook/katana/model/FacebookSessionInfo;

    const-string v2, "username"

    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->e:Ljava/util/Map;

    const-string v3, "email"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/katana/model/FacebookSessionInfo;->a_(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 223
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session info not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    const-string v0, "62f8ce9f74b12f84c123cc23437a4a32"

    return-object v0
.end method

.method public final h()Lcom/facebook/katana/model/FacebookSessionInfo;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/facebook/katana/service/method/AuthLogin;->a:Lcom/facebook/katana/model/FacebookSessionInfo;

    return-object v0
.end method
