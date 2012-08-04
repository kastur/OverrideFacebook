.class final Lcom/facebook/orca/debug/ThreadTrace$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadTrace.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lcom/facebook/orca/debug/ThreadTrace;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Lcom/facebook/orca/debug/ThreadTrace;
    .locals 1

    .prologue
    .line 24
    new-instance v0, Lcom/facebook/orca/debug/ThreadTrace;

    invoke-direct {v0}, Lcom/facebook/orca/debug/ThreadTrace;-><init>()V

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/facebook/orca/debug/ThreadTrace$1;->a()Lcom/facebook/orca/debug/ThreadTrace;

    move-result-object v0

    return-object v0
.end method
