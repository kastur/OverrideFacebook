.class public Lcom/facebook/katana/service/method/ApiMethod;
.super Lcom/facebook/katana/service/method/NetworkServiceOperation;
.source "ApiMethod.java"


# static fields
.field protected static final b:Lcom/facebook/katana/service/method/FBJsonFactory;


# instance fields
.field protected final c:Ljava/lang/String;

.field protected final d:Ljava/lang/String;

.field protected final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    new-instance v0, Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-direct {v0}, Lcom/facebook/katana/service/method/FBJsonFactory;-><init>()V

    sput-object v0, Lcom/facebook/katana/service/method/ApiMethod;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 131
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/facebook/katana/service/method/NetworkServiceOperation;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 116
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    .line 132
    iput-object p4, p0, Lcom/facebook/katana/service/method/ApiMethod;->c:Ljava/lang/String;

    .line 133
    iput-object p5, p0, Lcom/facebook/katana/service/method/ApiMethod;->d:Ljava/lang/String;

    .line 134
    new-instance v0, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;

    invoke-direct {v0, p0}, Lcom/facebook/katana/service/method/NetworkServiceOperation$NetworkServiceOperationHttpListener;-><init>(Lcom/facebook/katana/service/method/NetworkServiceOperation;)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    .line 135
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3, p6}, Lcom/facebook/katana/service/method/NetworkServiceOperation;-><init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/method/ServiceOperationListener;)V

    .line 116
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    .line 153
    iput-object p4, p0, Lcom/facebook/katana/service/method/ApiMethod;->c:Ljava/lang/String;

    .line 154
    iput-object p5, p0, Lcom/facebook/katana/service/method/ApiMethod;->d:Ljava/lang/String;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    .line 156
    return-void
.end method

.method protected static a(Ljava/lang/String;C)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 373
    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v0, 0x80

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 374
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 375
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_0

    .line 376
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 374
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;
    .locals 1
    .parameter

    .prologue
    .line 335
    sget-object v0, Lcom/facebook/katana/service/method/ApiMethod;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v0, p0}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 337
    return-object v0
.end method

.method public static a(Ljava/lang/Exception;)Z
    .locals 2
    .parameter

    .prologue
    .line 204
    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/facebook/katana/model/FacebookApiException;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/facebook/katana/model/FacebookApiException;

    invoke-virtual {p0}, Lcom/facebook/katana/model/FacebookApiException;->a()I

    move-result v0

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 204
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 262
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/ApiMethod;->d()Ljava/lang/StringBuilder;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 265
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "ApiMethod"

    if-eq v1, v0, :cond_0

    .line 269
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "ApiMethod"

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 271
    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 280
    :goto_0
    const-string v1, "We always should have something in the query (e.g., the signature)"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_1
    return-object p1

    .line 277
    :cond_0
    const-string v0, "ApiMethod"

    goto :goto_0

    .line 284
    :cond_1
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public a()V
    .locals 7

    .prologue
    .line 164
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/ApiMethod;->b()V

    .line 165
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/ApiMethod;->c()V

    .line 166
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->k:Ljava/lang/String;

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ApiMethod;->o:Landroid/content/Context;

    sget-object v2, Lcom/facebook/katana/net/HttpOperation$Method;->GET:Lcom/facebook/katana/net/HttpOperation$Method;

    iget-object v3, p0, Lcom/facebook/katana/service/method/ApiMethod;->d:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/facebook/katana/service/method/ApiMethod;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/katana/service/method/ApiMethod;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Lcom/facebook/katana/net/HttpOperation$Method;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 173
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->start()V

    .line 180
    :cond_1
    :goto_1
    return-void

    .line 169
    :cond_2
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->k:Ljava/lang/String;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    new-instance v0, Lcom/facebook/katana/net/HttpOperation;

    iget-object v1, p0, Lcom/facebook/katana/service/method/ApiMethod;->o:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/service/method/ApiMethod;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/facebook/katana/service/method/ApiMethod;->d()Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/x-www-form-urlencoded"

    iget-object v5, p0, Lcom/facebook/katana/service/method/ApiMethod;->m:Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/net/HttpOperation;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/net/HttpOperation$HttpOperationListener;Z)V

    iput-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    iget-object v1, p0, Lcom/facebook/katana/service/method/ApiMethod;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/facebook/katana/service/method/ApiMethod;->q:Lcom/facebook/katana/service/method/ServiceOperationListener;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3, v0}, Lcom/facebook/katana/service/method/ServiceOperationListener;->a(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1
.end method

.method protected a(Lcom/facebook/katana/net/HttpOperation$ResponseInputStream;)V
    .locals 1
    .parameter

    .prologue
    .line 319
    sget-object v0, Lcom/facebook/katana/service/method/ApiMethod;->b:Lcom/facebook/katana/service/method/FBJsonFactory;

    invoke-virtual {v0, p1}, Lcom/facebook/katana/service/method/FBJsonFactory;->a(Ljava/io/InputStream;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    .line 321
    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/ApiMethod;->a(Lorg/codehaus/jackson/JsonParser;)V

    .line 322
    return-void
.end method

.method protected a(Lorg/codehaus/jackson/JsonParser;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    return-void
.end method

.method public a(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    if-eqz v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    invoke-virtual {v0}, Lcom/facebook/katana/net/HttpOperation;->a()V

    .line 189
    if-eqz p1, :cond_0

    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0, v1, v1}, Lcom/facebook/katana/service/method/ApiMethod;->c(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 193
    :cond_0
    iput-object v1, p0, Lcom/facebook/katana/service/method/ApiMethod;->l:Lcom/facebook/katana/net/HttpOperation;

    .line 195
    :cond_1
    return-void
.end method

.method protected b(Z)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 358
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 359
    const-string v1, ",\"method\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    iget-object v1, p0, Lcom/facebook/katana/service/method/ApiMethod;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final b()V
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    const-string v1, "api_key"

    const-string v2, "882a8490361da98702bf97a021ddc14d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    const-string v1, "format"

    const-string v2, "JSON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    const-string v1, "method"

    iget-object v2, p0, Lcom/facebook/katana/service/method/ApiMethod;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    const-string v1, "v"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    const-string v1, "migrations_override"

    const-string v2, "{\'empty_json\': true}"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    const-string v1, "return_ssl_resources"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    const-string v1, "locale"

    iget-object v2, p0, Lcom/facebook/katana/service/method/ApiMethod;->o:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    return-void
.end method

.method protected final c()V
    .locals 4

    .prologue
    .line 251
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    const-string v1, "sig"

    iget-object v2, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/katana/service/method/ApiMethod;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/katana/util/FacebookPlatform;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    return-void
.end method

.method protected c(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 219
    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Lcom/facebook/katana/service/method/NetworkServiceOperation;->c(Lcom/facebook/katana/service/method/ServiceOperation;ILjava/lang/String;Ljava/lang/Exception;)V

    .line 226
    return-void
.end method

.method protected d()Ljava/lang/StringBuilder;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->e:Ljava/util/Map;

    invoke-static {v0}, Lcom/facebook/katana/util/URLQueryBuilder;->a(Ljava/util/Map;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/facebook/katana/service/method/ApiMethod;->p:Landroid/content/Intent;

    const-string v1, "ApiMethod.secret"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/service/method/ApiMethod;->b(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/facebook/katana/service/method/ApiMethod;->f()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
