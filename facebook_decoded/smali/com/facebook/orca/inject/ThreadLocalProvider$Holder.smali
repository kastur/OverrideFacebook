.class Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;
.super Ljava/lang/Object;
.source "ThreadLocalProvider.java"


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/facebook/orca/inject/ThreadLocalProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/orca/inject/ThreadLocalProvider;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;-><init>(Lcom/facebook/orca/inject/ThreadLocalProvider;)V

    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    iput-object p1, p0, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;->a:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;->b:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 22
    iget-object v0, p0, Lcom/facebook/orca/inject/ThreadLocalProvider$Holder;->a:Ljava/lang/Object;

    return-object v0
.end method
