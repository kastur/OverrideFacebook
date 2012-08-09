.class Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;
.super Ljava/lang/Object;
.source "TokenRefreshService.java"

# interfaces
.implements Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;


# instance fields
.field private a:Landroid/os/Message;

.field private synthetic b:Lcom/facebook/katana/platform/TokenRefreshService;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 145
    iput-object p1, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {p2}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    .line 152
    return-void
.end method


# virtual methods
.method public final a(JJ)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 155
    return-void
.end method

.method public final a(Lcom/facebook/katana/net/HttpOperation;ILjava/lang/String;Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;Ljava/lang/Exception;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    if-eqz p5, :cond_0

    .line 164
    iget-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    iget-object v1, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    const-string v2, "internal error"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/platform/TokenRefreshService;->a(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;Ljava/lang/String;)V

    .line 214
    :goto_0
    return-void

    .line 168
    :cond_0
    const/16 v0, 0xc8

    if-eq p2, v0, :cond_1

    .line 169
    iget-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    iget-object v1, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    const-string v2, "http protocol error"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/platform/TokenRefreshService;->a(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 173
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 176
    :try_start_0
    new-instance v0, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    invoke-virtual {v0, p4}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    .line 177
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 178
    const-class v0, Lcom/facebook/katana/model/TokenRefreshRequestResponse;

    invoke-static {v2, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/TokenRefreshRequestResponse;

    .line 180
    if-nez v0, :cond_3

    .line 182
    const-class v0, Lcom/facebook/katana/model/FacebookApiException;

    invoke-static {v2, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookApiException;

    .line 185
    if-eqz v0, :cond_2

    .line 186
    const-string v2, "error"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookApiException;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v2, "error_code"

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookApiException;->a()I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    iget-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    iget-object v2, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    invoke-static {v0, v2, v1}, Lcom/facebook/katana/platform/TokenRefreshService;->a(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/facebook/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 196
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    iget-object v1, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    const-string v2, "unexpected response"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/platform/TokenRefreshService;->a(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 191
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    iget-object v1, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    const-string v2, "unexpected response"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/platform/TokenRefreshService;->a(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/codehaus/jackson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/facebook/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 199
    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    iget-object v1, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    const-string v2, "unexpected response"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/platform/TokenRefreshService;->a(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    iget-object v1, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    const-string v2, "unexpected response"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/platform/TokenRefreshService;->a(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 207
    :catch_3
    move-exception v0

    iget-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    iget-object v1, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    const-string v2, "internal error"

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/platform/TokenRefreshService;->a(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 211
    :cond_3
    const-string v2, "access_token"

    iget-object v3, v0, Lcom/facebook/katana/model/TokenRefreshRequestResponse;->accessToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "expires_in"

    iget-wide v3, v0, Lcom/facebook/katana/model/TokenRefreshRequestResponse;->expiresAt:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    iget-object v0, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->b:Lcom/facebook/katana/platform/TokenRefreshService;

    iget-object v2, p0, Lcom/facebook/katana/platform/TokenRefreshService$TokenRefreshOperationListener;->a:Landroid/os/Message;

    invoke-static {v0, v2, v1}, Lcom/facebook/katana/platform/TokenRefreshService;->a(Lcom/facebook/katana/platform/TokenRefreshService;Landroid/os/Message;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
