.class final enum Lcom/google/common/base/Predicates$ObjectPredicate$3;
.super Lcom/google/common/base/Predicates$ObjectPredicate;
.source "Predicates.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/common/base/Predicates$ObjectPredicate;-><init>(Ljava/lang/String;ILcom/google/common/base/Predicates$1;)V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 269
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
