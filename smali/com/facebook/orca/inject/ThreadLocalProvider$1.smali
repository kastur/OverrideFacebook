.class final Lcom/facebook/orca/inject/ThreadLocalProvider$1;
.super Ljava/lang/ThreadLocal;
.source "ThreadLocalProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method

.method private static a()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/facebook/orca/inject/ThreadLocalProvider$1;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
