.class public Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;
.super Lcom/facebook/orca/protocol/base/BatchRunner;
.source "SimulatedBatchRunner.java"


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# instance fields
.field private b:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "\\{result=([^}:]*):([^}]*)\\}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/protocol/base/SingleMethodRunner;)V
    .locals 1
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/facebook/orca/protocol/base/BatchRunner;-><init>()V

    .line 24
    invoke-static {}, Lcom/google/common/collect/Maps;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c:Ljava/util/Map;

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->b:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 29
    return-void
.end method

.method private a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiRequest;
    .locals 7
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->b(Lcom/facebook/orca/protocol/base/ApiRequest;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    :goto_0
    return-object p1

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 54
    invoke-static {}, Lcom/google/common/collect/Lists;->a()Ljava/util/ArrayList;

    move-result-object v4

    .line 55
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/NameValuePair;

    .line 56
    new-instance v2, Lcom/facebook/apache/http/message/BasicNameValuePair;

    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v5, v0}, Lcom/facebook/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_1
    new-instance v0, Lcom/facebook/orca/protocol/base/ApiRequest;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->f()Lcom/facebook/orca/protocol/base/ApiResponseType;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->e()Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V

    move-object p1, v0

    goto :goto_0
.end method

.method private b(Lcom/facebook/orca/protocol/base/ApiRequest;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 78
    :goto_0
    return v0

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/base/ApiRequest;->d()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/apache/http/NameValuePair;

    .line 72
    invoke-interface {v0}, Lcom/facebook/apache/http/NameValuePair;->b()Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v3, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 75
    goto :goto_0

    .line 78
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 82
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    :goto_0
    return-object p1

    .line 86
    :cond_0
    sget-object v0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 87
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    iget-object v4, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 92
    if-nez v4, :cond_1

    .line 93
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No json result named "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {v0, v3}, Lcom/jayway/jsonpath/JsonPath;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    invoke-virtual {v1, v2, v0}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1
    .parameter

    .prologue
    .line 104
    sget-object v0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 7
    .parameter

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a()Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchOperation;

    .line 34
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a()Lcom/facebook/orca/protocol/base/ApiMethod;

    move-result-object v3

    .line 37
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v4

    .line 39
    invoke-interface {v3, v4}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiRequest;

    move-result-object v4

    .line 40
    iget-object v5, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->b:Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    invoke-virtual {v5, v4}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiRequest;)Lcom/facebook/orca/protocol/base/ApiResponse;

    move-result-object v4

    .line 41
    if-eqz v2, :cond_0

    .line 42
    iget-object v5, p0, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->c:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/facebook/orca/protocol/base/ApiResponse;->d()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2, v4}, Lcom/facebook/orca/protocol/base/ApiMethod;->a(Ljava/lang/Object;Lcom/facebook/orca/protocol/base/ApiResponse;)Ljava/lang/Object;

    move-result-object v2

    .line 45
    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    :cond_1
    return-void
.end method
