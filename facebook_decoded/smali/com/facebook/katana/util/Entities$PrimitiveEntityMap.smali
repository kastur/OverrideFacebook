.class Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;
.super Ljava/lang/Object;
.source "Entities.java"

# interfaces
.implements Lcom/facebook/katana/util/Entities$EntityMap;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 918
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;->a:Ljava/util/Map;

    .line 920
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 932
    iget-object v0, p0, Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 933
    if-nez v0, :cond_0

    .line 934
    const/4 v0, -0x1

    .line 936
    :goto_0
    return v0

    :cond_0
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 923
    iget-object v0, p0, Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;->a:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    iget-object v0, p0, Lcom/facebook/katana/util/Entities$PrimitiveEntityMap;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 925
    return-void
.end method
