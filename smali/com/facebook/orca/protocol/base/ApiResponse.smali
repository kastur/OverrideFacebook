.class public Lcom/facebook/orca/protocol/base/ApiResponse;
.super Ljava/lang/Object;
.source "ApiResponse.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Lorg/codehaus/jackson/JsonNode;


# direct methods
.method public constructor <init>(ILjava/util/List;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/Header;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->a:I

    .line 24
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 25
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Lorg/codehaus/jackson/JsonNode;

    .line 27
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Lorg/codehaus/jackson/JsonNode;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/apache/http/Header;",
            ">;",
            "Lorg/codehaus/jackson/JsonNode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->a:I

    .line 31
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Lorg/codehaus/jackson/JsonNode;

    .line 34
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No response body."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Ljava/lang/String;

    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Lorg/codehaus/jackson/JsonNode;
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Lorg/codehaus/jackson/JsonNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "No response json."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 71
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->e()V

    .line 72
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Lorg/codehaus/jackson/JsonNode;

    return-object v0

    .line 70
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->b()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Lorg/codehaus/jackson/JsonNode;

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/facebook/orca/protocol/base/ApiResponse;->c()Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No response json or body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Lorg/codehaus/jackson/JsonNode;

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->c:Lorg/codehaus/jackson/JsonNode;

    invoke-static {v0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Lorg/codehaus/jackson/JsonNode;)V

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/ApiResponse;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/orca/protocol/base/ApiResponseChecker;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
