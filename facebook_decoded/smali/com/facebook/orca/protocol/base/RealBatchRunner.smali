.class public Lcom/facebook/orca/protocol/base/RealBatchRunner;
.super Lcom/facebook/orca/protocol/base/BatchRunner;
.source "RealBatchRunner.java"


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

.field private final b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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
            "Ljava/lang/Boolean;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/facebook/orca/protocol/base/BatchRunner;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a:Ljavax/inject/Provider;

    .line 60
    iput-object p2, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    .line 61
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    .line 62
    iput-object p4, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->d:Ljavax/inject/Provider;

    .line 63
    iput-object p5, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->e:Ljavax/inject/Provider;

    .line 64
    iput-object p6, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->f:Ljavax/inject/Provider;

    .line 65
    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 13
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v3, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v3, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 69
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a()Ljava/util/List;

    move-result-object v4

    .line 70
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v5

    .line 71
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v6

    .line 72
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchOperation;

    .line 73
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a()Lcom/facebook/orca/protocol/base/ApiMethod;

    move-result-object v1

    .line 74
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v8

    .line 75
    new-instance v9, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v9, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 76
    const-string v1, "method"

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v1, v10}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {v8}, Lcom/facebook/orca/protocol/base/ApiRequestUtils;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Ljava/util/List;

    move-result-object v10

    .line 79
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v11, "phprof_sample"

    const-string v12, "1"

    invoke-direct {v1, v11, v12}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    if-eqz v1, :cond_0

    .line 83
    new-instance v11, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v12, "phprof_user"

    invoke-direct {v11, v12, v1}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    new-instance v1, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v11, "wirehog_sample"

    const-string v12, "1"

    invoke-direct {v1, v11, v12}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    if-eqz v1, :cond_1

    .line 90
    new-instance v11, Lcom/facebook/apache/http/message/BasicNameValuePair;

    const-string v12, "wirehog_user"

    invoke-direct {v11, v12, v1}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_1
    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v1

    .line 95
    const-string v11, "GET"

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 96
    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Lcom/facebook/apache/http/client/utils/URLEncodedUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 97
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "?"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    :goto_1
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 108
    const-string v10, "name"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_2
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->d()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 111
    const-string v10, "depends_on"

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v10, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_3
    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 114
    const-string v0, "attached_files"

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    move-result-object v10

    invoke-virtual {v10}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v0, v10}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_4
    const-string v0, "omit_response_on_success"

    invoke-virtual {v9, v0, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 118
    const-string v0, "relative_url"

    invoke-virtual {v9, v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {v3, v9}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    .line 120
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 98
    :cond_5
    const-string v11, "POST"

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 99
    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Lcom/facebook/apache/http/client/utils/URLEncodedUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 100
    const-string v11, "body"

    invoke-virtual {v9, v11, v10}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 101
    :cond_6
    const-string v11, "DELETE"

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 102
    const-string v11, "UTF-8"

    invoke-static {v10, v11}, Lcom/facebook/apache/http/client/utils/URLEncodedUtils;->a(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 103
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "?"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 105
    :cond_7
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported method: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_8
    new-instance v7, Lcom/facebook/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v7}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 124
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->d:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    const-string v1, "access_token"

    new-instance v8, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    invoke-direct {v8, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v8}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 126
    invoke-virtual {v3}, Lorg/codehaus/jackson/node/ArrayNode;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    const/4 v1, 0x2

    invoke-static {v1}, Lcom/facebook/orca/debug/BLog;->b(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 128
    const-string v1, "RealBatchRunner"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Request JSON: "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/facebook/orca/debug/BLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    :cond_9
    const-string v1, "batch"

    new-instance v3, Lcom/facebook/apache/http/entity/mime/content/StringBody;

    invoke-direct {v3, v0}, Lcom/facebook/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v3}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    .line 131
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    .line 132
    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/apache/http/entity/mime/FormBodyPart;->b()Lcom/facebook/apache/http/entity/mime/content/ContentBody;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Lcom/facebook/apache/http/entity/mime/MultipartEntity;->a(Ljava/lang/String;Lcom/facebook/apache/http/entity/mime/content/ContentBody;)V

    goto :goto_2

    .line 135
    :cond_a
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/config/PlatformAppHttpConfig;

    .line 136
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->c()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 137
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->e:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 138
    const-string v1, "phprof_sample"

    const-string v5, "1"

    invoke-virtual {v3, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 139
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 140
    if-eqz v1, :cond_b

    .line 141
    const-string v5, "phprof_user"

    invoke-virtual {v3, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 144
    :cond_b
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->f:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 145
    const-string v1, "wirehog_sample"

    const-string v5, "1"

    invoke-virtual {v3, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 146
    iget-object v1, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    if-eqz v1, :cond_c

    .line 148
    const-string v5, "wirehog_user"

    invoke-virtual {v3, v5, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 152
    :cond_c
    const-string v1, "locale"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/orca/locale/FBLocaleMapper;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 154
    new-instance v1, Lcom/facebook/apache/http/client/methods/HttpPost;

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/facebook/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1, v7}, Lcom/facebook/apache/http/client/methods/HttpPost;->a(Lcom/facebook/apache/http/HttpEntity;)V

    .line 157
    invoke-interface {v0}, Lcom/facebook/orca/config/PlatformAppHttpConfig;->a()Ljava/lang/String;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_d

    .line 159
    const-string v3, "User-Agent"

    invoke-virtual {v1, v3, v0}, Lcom/facebook/apache/http/client/methods/HttpPost;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_d
    new-instance v0, Lcom/facebook/orca/protocol/base/JsonResponseHandler;

    invoke-direct {v0}, Lcom/facebook/orca/protocol/base/JsonResponseHandler;-><init>()V

    .line 163
    iget-object v3, p0, Lcom/facebook/orca/protocol/base/RealBatchRunner;->b:Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;

    invoke-virtual {v3, p1, v1, v0}, Lcom/facebook/orca/common/http/OrcaHttpRequestProcessor;->a(Ljava/lang/String;Lcom/facebook/apache/http/client/methods/HttpUriRequest;Lcom/facebook/apache/http/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 164
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_e

    .line 165
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Received wrong number of batches in response"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move v3, v2

    .line 168
    :goto_3
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->x()I

    move-result v1

    if-ge v3, v1, :cond_10

    .line 169
    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonNode;->a(I)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    .line 170
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchOperation;

    .line 171
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a()Lcom/facebook/orca/protocol/base/ApiMethod;

    move-result-object v7

    .line 172
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/protocol/base/ApiRequest;

    .line 174
    new-instance v8, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;

    invoke-direct {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;-><init>()V

    .line 175
    invoke-virtual {v8, v5}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v5

    .line 178
    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v2

    sget-object v9, Lcom/facebook/orca/protocol/base/ApiResponseType;->JSON:Lcom/facebook/orca/protocol/base/ApiResponseType;

    if-ne v2, v9, :cond_f

    .line 179
    new-instance v2, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b()I

    move-result v9

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a()Ljava/util/List;

    move-result-object v8

    invoke-static {v5}, Lcom/facebook/orca/common/util/JSONUtil;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v5

    invoke-direct {v2, v9, v8, v5}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Lorg/codehaus/jackson/JsonNode;)V

    .line 189
    :goto_4
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5, v2}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;

    move-result-object v2

    .line 190
    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Lcom/facebook/orca/protocol/base/RealBatchRunner;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_3

    .line 184
    :cond_f
    new-instance v2, Lcom/facebook/orca/protocol/base/ApiResponse;

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->b()I

    move-result v9

    invoke-virtual {v8}, Lcom/facebook/orca/protocol/base/CustomResponseHandlerForBatch;->a()Ljava/util/List;

    move-result-object v8

    invoke-direct {v2, v9, v8, v5}, Lcom/facebook/orca/protocol/base/ApiResponse;-><init>(ILjava/util/List;Ljava/lang/String;)V

    goto :goto_4

    .line 192
    :cond_10
    return-void
.end method
