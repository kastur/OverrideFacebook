.class Lcustom/android/AbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinner.java"


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcustom/android/AbsSpinner;)V
    .locals 1
    .parameter

    .prologue
    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 459
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcustom/android/AbsSpinner$RecycleBin;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v0, p0, Lcustom/android/AbsSpinner$RecycleBin;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    .line 478
    :cond_0
    :goto_0
    return-object v0

    .line 472
    :cond_1
    iget-object v0, p0, Lcustom/android/AbsSpinner$RecycleBin;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 473
    iget-object v1, p0, Lcustom/android/AbsSpinner$RecycleBin;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 475
    if-eqz v0, :cond_0

    .line 476
    iget-object v2, p0, Lcustom/android/AbsSpinner$RecycleBin;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_0
.end method

.method public final a(ILandroid/view/View;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 462
    iget-object v0, p0, Lcustom/android/AbsSpinner$RecycleBin;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 466
    iget-object v0, p0, Lcustom/android/AbsSpinner$RecycleBin;->a:Landroid/util/SparseArray;

    iget-object v1, p0, Lcustom/android/AbsSpinner$RecycleBin;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    return-void
.end method
