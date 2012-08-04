.class Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;
.super Ljava/lang/Object;
.source "Deferred.java"


# instance fields
.field private final a:Lcom/facebook/orca/common/async/Deferrable;

.field private final b:Lcom/facebook/orca/common/async/Deferrable;


# direct methods
.method private constructor <init>(Lcom/facebook/orca/common/async/Deferred;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p2, p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->a:Lcom/facebook/orca/common/async/Deferrable;

    .line 23
    iput-object p3, p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->b:Lcom/facebook/orca/common/async/Deferrable;

    .line 24
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/common/async/Deferred;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;B)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;-><init>(Lcom/facebook/orca/common/async/Deferred;Lcom/facebook/orca/common/async/Deferrable;Lcom/facebook/orca/common/async/Deferrable;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->b:Lcom/facebook/orca/common/async/Deferrable;

    return-object v0
.end method

.method static synthetic b(Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;)Lcom/facebook/orca/common/async/Deferrable;
    .locals 1
    .parameter

    .prologue
    .line 17
    iget-object v0, p0, Lcom/facebook/orca/common/async/Deferred$DeferrableHolder;->a:Lcom/facebook/orca/common/async/Deferrable;

    return-object v0
.end method
