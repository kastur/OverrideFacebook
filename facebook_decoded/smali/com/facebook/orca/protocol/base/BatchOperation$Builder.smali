.class public Lcom/facebook/orca/protocol/base/BatchOperation$Builder;
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

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/protocol/base/ApiMethod",
            "<TPARAMS;TRESU",
            "LT;",
            ">;TPARAMS;)V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a:Lcom/facebook/orca/protocol/base/ApiMethod;

    .line 62
    iput-object p2, p0, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b:Ljava/lang/Object;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)Lcom/facebook/orca/protocol/base/ApiMethod;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a:Lcom/facebook/orca/protocol/base/ApiMethod;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->d:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/orca/protocol/base/BatchOperation$Builder",
            "<TPARAMS;TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->c:Ljava/lang/String;

    .line 79
    return-object p0
.end method

.method public final a()Lcom/facebook/orca/protocol/base/BatchOperation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/orca/protocol/base/BatchOperation",
            "<TPARAMS;TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lcom/facebook/orca/protocol/base/BatchOperation;

    invoke-direct {v0, p0}, Lcom/facebook/orca/protocol/base/BatchOperation;-><init>(Lcom/facebook/orca/protocol/base/BatchOperation$Builder;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/orca/protocol/base/BatchOperation$Builder",
            "<TPARAMS;TRESU",
            "LT;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iput-object p1, p0, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->d:Ljava/lang/String;

    .line 88
    return-object p0
.end method
