.class public Lcom/facebook/orca/images/MultiFetchImageParams;
.super Ljava/lang/Object;
.source "MultiFetchImageParams.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/images/FetchImageParams;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/facebook/orca/images/UrlImageCompositor;


# direct methods
.method public constructor <init>(Lcom/google/common/collect/ImmutableList;Lcom/facebook/orca/images/UrlImageCompositor;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/images/FetchImageParams;",
            ">;",
            "Lcom/facebook/orca/images/UrlImageCompositor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/facebook/orca/images/MultiFetchImageParams;->a:Lcom/google/common/collect/ImmutableList;

    .line 29
    iput-object p2, p0, Lcom/facebook/orca/images/MultiFetchImageParams;->b:Lcom/facebook/orca/images/UrlImageCompositor;

    .line 30
    return-void
.end method

.method private a(Lcom/facebook/orca/images/MultiFetchImageParams;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 57
    iget-object v0, p0, Lcom/facebook/orca/images/MultiFetchImageParams;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iget-object v1, p1, Lcom/facebook/orca/images/MultiFetchImageParams;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v3

    :cond_1
    move v2, v3

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/facebook/orca/images/MultiFetchImageParams;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 61
    iget-object v0, p0, Lcom/facebook/orca/images/MultiFetchImageParams;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/images/FetchImageParams;

    iget-object v1, p1, Lcom/facebook/orca/images/MultiFetchImageParams;->a:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/images/FetchImageParams;

    invoke-static {v0, v1}, Lcom/facebook/orca/images/FetchImageParams;->a(Lcom/facebook/orca/images/FetchImageParams;Lcom/facebook/orca/images/FetchImageParams;)Z

    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 60
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/facebook/orca/images/MultiFetchImageParams;->b:Lcom/facebook/orca/images/UrlImageCompositor;

    iget-object v1, p1, Lcom/facebook/orca/images/MultiFetchImageParams;->b:Lcom/facebook/orca/images/UrlImageCompositor;

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/facebook/orca/images/MultiFetchImageParams;Lcom/facebook/orca/images/MultiFetchImageParams;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 77
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 78
    const/4 v0, 0x1

    .line 82
    :goto_0
    return v0

    .line 79
    :cond_0
    if-eqz p0, :cond_1

    if-nez p1, :cond_2

    .line 80
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 82
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/orca/images/MultiFetchImageParams;->a(Lcom/facebook/orca/images/MultiFetchImageParams;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/images/FetchImageParams;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-object v0, p0, Lcom/facebook/orca/images/MultiFetchImageParams;->a:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/images/UrlImageCompositor;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/facebook/orca/images/MultiFetchImageParams;->b:Lcom/facebook/orca/images/UrlImageCompositor;

    return-object v0
.end method
