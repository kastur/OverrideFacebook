.class public Lcom/facebook/orca/protocol/base/BatchOperation;
.super Ljava/lang/Object;
.source "BatchOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PARAMS:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/protocol/base/ApiMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/orca/protocol/base/ApiMethod",
            "<TPARAMS;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TPARAMS;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/protocol/base/BatchOperation$Builder",
            "<TPARAMS;TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)Lcom/facebook/orca/protocol/base/ApiMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation;->a:Lcom/facebook/orca/protocol/base/ApiMethod;

    .line 22
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation;->b:Ljava/lang/Object;

    .line 23
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->c(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation;->c:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->d(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation;->d:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;
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
            ">;TPARAMS;)",
            "Lcom/facebook/orca/protocol/base/BatchOperation$Builder",
            "<TPARAMS;TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    invoke-direct {v0, p0, p1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;-><init>(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/protocol/base/ApiMethod;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/orca/protocol/base/ApiMethod",
            "<TPARAMS;TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 33
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation;->a:Lcom/facebook/orca/protocol/base/ApiMethod;

    return-object v0
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TPARAMS;"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation;->d:Ljava/lang/String;

    return-object v0
.end method
