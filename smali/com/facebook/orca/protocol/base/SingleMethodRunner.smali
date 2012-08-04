.class public Lcom/facebook/orca/protocol/base/SingleMethodRunner;
.super Ljava/lang/Object;
.source "SingleMethodRunner.java"


# instance fields
.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/config/PlatformAppHttpConfig;

.field private final c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/facebook/orca/config/PlatformAppConfig;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/config/PlatformAppHttpConfig;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/config/PlatformAppConfig;)V
    .locals 0
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
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            ">;",
            "Lcom/facebook/orca/config/PlatformAppHttpConfig;",
            "Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/facebook/orca/config/PlatformAppConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a:Ljavax/inject/Provider;

    .line 67
    iput-object p2, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 68
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 69
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->d:Ljavax/inject/Provider;

    .line 70
    iput-object p5, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->e:Ljavax/inject/Provider;

    .line 71
    iput-object p6, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->f:Ljavax/inject/Provider;

    .line 72
    iput-object p7, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->g:Ljavax/inject/Provider;

    .line 73
    iput-object p8, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->h:Lcom/facebook/orca/config/PlatformAppConfig;

    .line 74
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v1, "api_key"

    iget-object v2, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->h:Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-interface {v2}, Lcom/facebook/orca/config/PlatformAppConfig;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    new-instance v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner$1;-><init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/NameValuePair;

    .line 221
    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->h:Lcom/facebook/orca/config/PlatformAppConfig;

    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppConfig;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/SecureHashUtil;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v2, "sig"

    invoke-direct {v1, v2, v0}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method private b(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/apache/http/entity/mime/MultipartEntity;
    .locals 8
    .parameter

    .prologue
    .line 174
    new-instance v1, Lcom/facebook/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v1}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 176
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v2

    .line 177
    const-string v0, "method/auth.login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 178
    const-string v0, "method/auth.getSessionForApp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 179
    const-string v4, "method/logging.mobilelogs"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 182
    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v4, :cond_0

    .line 183
    const-string v5, "access_token"

    new-instance v6, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v6, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 186
    :cond_0
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/ApiRequestUtils;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 188
    const-string v5, "method/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    new-instance v5, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v6, "method"

    const/4 v7, 0x7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v6, v2}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    if-eqz v4, :cond_3

    .line 195
    :cond_2
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Ljava/util/List;)V

    .line 198
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/NameValuePair;

    .line 199
    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_1

    .line 190
    :cond_4
    const-string v2, "DELETE"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 191
    new-instance v2, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v5, "method"

    const-string v6, "DELETE"

    invoke-direct {v2, v5, v6}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    :cond_5
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_6

    .line 203
    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->b()Lcom/facebook/apache/http/entity/mime/content/ContentBody;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 205
    :cond_6
    return-object v1
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiResponse;
    .locals 5
    .parameter
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v3

    .line 99
    const-string v0, "method/auth.login"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 100
    const-string v0, "method/auth.getSessionForApp"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 102
    if-nez v4, :cond_0

    if-eqz v1, :cond_3

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b:Lcom/facebook/orca/config/PlatformAppHttpConfig;

    invoke-interface {v1}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object v2, v1

    .line 110
    :goto_0
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 112
    if-nez v4, :cond_2

    .line 113
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    const-string v1, "phprof_sample"

    const-string v3, "1"

    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 115
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    if-eqz v1, :cond_1

    .line 117
    const-string v3, "phprof_user"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->g:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    const-string v1, "wirehog_sample"

    const-string v3, "1"

    invoke-virtual {v2, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->d:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    if-eqz v1, :cond_2

    .line 124
    const-string v3, "wirehog_user"

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 130
    :cond_2
    const-string v1, "GET"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 131
    const-string v3, "access_token"

    iget-object v1, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 132
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/ApiRequestUtils;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/apache/http/NameValuePair;

    .line 133
    invoke-interface {v1}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Lcom/facebook/apache/http/NameValuePair;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 105
    :cond_3
    const-string v1, "method"

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->b()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_0

    .line 108
    :cond_4
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->c()Landroid/net/Uri$Builder;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_0

    .line 135
    :cond_5
    new-instance v1, Lcom/facebook/apache/http/client/methods/HttpGet;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 146
    :goto_2
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->a()Ljava/lang/String;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_6

    .line 148
    const-string v2, "User-Agent"

    invoke-interface {v1, v2, v0}, Lcom/facebook/apache/http/client/methods/HttpUriRequest;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_6
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v0

    sget-object v2, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v0, v2, :cond_a

    .line 152
    new-instance v2, Lcom/facebook/orca/protocol/base/JsonResponseHandler;

    invoke-direct {v2}, Lcom/facebook/orca/protocol/base/JsonResponseHandler;-><init>()V

    .line 153
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lcom/facebook/apache/http/client/methods/HttpUriRequest;Lcom/facebook/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 155
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/JsonResponseHandler;->a()Lcom/facebook/apache/http/HttpResponse;

    move-result-object v2

    .line 156
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-interface {v2}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v3

    invoke-interface {v2}, Lcom/facebook/apache/http/HttpResponse;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Lorg/codehaus/jackson/JsonNode;)V

    move-object v0, v1

    .line 165
    :goto_3
    return-object v0

    .line 137
    :cond_7
    const-string v1, "POST"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "DELETE"

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 138
    :cond_8
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->b(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/apache/http/entity/mime/MultipartEntity;

    move-result-object v3

    .line 139
    new-instance v1, Lcom/facebook/apache/http/client/methods/HttpPost;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v1, v3}, Lcom/facebook/apache/http/client/methods/HttpPost;->a(Lcom/facebook/apache/http/HttpEntity;)V

    goto :goto_2

    .line 143
    :cond_9
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_a
    new-instance v2, Lcom/facebook/orca/protocol/base/StringResponseHandler;

    invoke-direct {v2}, Lcom/facebook/orca/protocol/base/StringResponseHandler;-><init>()V

    .line 162
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->c:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lcom/facebook/apache/http/client/methods/HttpUriRequest;Lcom/facebook/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/StringResponseHandler;->a()Lcom/facebook/apache/http/HttpResponse;

    move-result-object v2

    .line 165
    new-instance v1, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-interface {v2}, Lcom/facebook/apache/http/HttpResponse;->a()Lcom/facebook/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/apache/http/StatusLine;->b()I

    move-result v3

    invoke-interface {v2}, Lcom/facebook/apache/http/HttpResponse;->d()[Lcom/facebook/apache/http/Header;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v3, v2, v0}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_3
.end method

.method public final a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .end parameter
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<PARAMS:",
            "Ljava/lang/Object;",
            "RESU",
            "LT:Ljava/lang/Object;",
            ">(",
            "Lcom/facebook/orca/protocol/base/ApiMethod",
            "<TPARAMS;TRESU",
            "LT;",
            ">;TPARAMS;)TRESU",
            "LT;"
        }
    .end annotation

    .prologue
    .line 89
    invoke-interface {p1, p2}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiResponse;

    move-result-object v0

    .line 91
    invoke-interface {p1, p2, v0}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
