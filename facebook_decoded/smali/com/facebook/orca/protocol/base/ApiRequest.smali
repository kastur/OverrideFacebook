.class public Lcom/facebook/orca/protocol/base/ApiRequest;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/protocol/base/ApiResponseType;

.field private final f:Lcom/facebook/apache/http/entity/mime/FormBodyPart;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/NameValuePair;",
            ">;",
            "Lcom/facebook/orca/protocol/base/ApiResponseType;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/protocol/base/ApiRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/orca/protocol/base/ApiResponseType;Lcom/facebook/apache/http/entity/mime/FormBodyPart;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/NameValuePair;",
            ">;",
            "Lcom/facebook/orca/protocol/base/ApiResponseType;",
            "Lcom/facebook/apache/http/entity/mime/FormBodyPart;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->a:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->b:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->c:Ljava/lang/String;

    .line 43
    invoke-static {p4}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->d:Lcom/google/common/collect/ImmutableList;

    .line 44
    iput-object p5, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->e:Lcom/facebook/orca/protocol/base/ApiResponseType;

    .line 45
    iput-object p6, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->f:Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    .line 46
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final e()Lcom/facebook/apache/http/entity/mime/FormBodyPart;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->f:Lcom/facebook/apache/http/entity/mime/FormBodyPart;

    return-object v0
.end method

.method public final f()Lcom/facebook/orca/protocol/base/ApiResponseType;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiRequest;->e:Lcom/facebook/orca/protocol/base/ApiResponseType;

    return-object v0
.end method
