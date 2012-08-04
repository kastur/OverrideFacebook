.class public Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;
.super Ljava/lang/Object;
.source "ScrollState.java"


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# instance fields
.field private final a:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

.field private final b:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;Ljava/util/Map;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;->a:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    .line 30
    invoke-static {p2}, Lcom/google/common/collect/ImmutableMap;->a(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;->b:Lcom/google/common/collect/ImmutableMap;

    .line 31
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;->a:Lcom/facebook/orca/common/ui/widgets/listview/ScrollState$ScrollPosition;

    return-object v0
.end method

.method public final b()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/facebook/orca/common/ui/widgets/listview/ScrollState;->b:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method
