.class Lcom/facebook/orca/database/DbCache$1;
.super Ljava/lang/Object;
.source "DbCache.java"

# interfaces
.implements Lcom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/common/base/Function",
        "<",
        "Lcom/facebook/orca/database/DbCache$OutOfDateThread;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/facebook/orca/database/DbCache;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/facebook/orca/database/DbCache$OutOfDateThread;)Ljava/lang/Long;
    .locals 2
    .parameter
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end parameter

    .prologue
    .line 132
    invoke-static {p0}, Lcom/facebook/orca/database/DbCache$OutOfDateThread;->a(Lcom/facebook/orca/database/DbCache$OutOfDateThread;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 129
    check-cast p1, Lcom/facebook/orca/database/DbCache$OutOfDateThread;

    invoke-static {p1}, Lcom/facebook/orca/database/DbCache$1;->a(Lcom/facebook/orca/database/DbCache$OutOfDateThread;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
