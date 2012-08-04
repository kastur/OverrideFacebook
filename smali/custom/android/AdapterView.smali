.class public abstract Lcustom/android/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcustom/android/AdapterView$OnItemSelectedListener;

.field private c:Lcustom/android/AdapterView$OnItemClickListener;

.field private d:Landroid/view/View;

.field private e:Z

.field f:I

.field g:I

.field h:J

.field i:Z

.field j:I

.field k:Z

.field l:Lcustom/android/AdapterView$OnItemLongClickListener;

.field m:Z

.field n:I

.field o:J

.field p:I

.field q:J

.field r:I

.field s:I

.field t:I

.field u:J

.field private v:Z

.field private w:Lcustom/android/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcustom/android/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field private x:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 221
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 64
    iput v0, p0, Lcustom/android/AdapterView;->f:I

    .line 80
    iput-wide v1, p0, Lcustom/android/AdapterView;->h:J

    .line 90
    iput-boolean v0, p0, Lcustom/android/AdapterView;->i:Z

    .line 122
    iput-boolean v0, p0, Lcustom/android/AdapterView;->k:Z

    .line 148
    iput v3, p0, Lcustom/android/AdapterView;->n:I

    .line 153
    iput-wide v1, p0, Lcustom/android/AdapterView;->o:J

    .line 158
    iput v3, p0, Lcustom/android/AdapterView;->p:I

    .line 163
    iput-wide v1, p0, Lcustom/android/AdapterView;->q:J

    .line 194
    iput v3, p0, Lcustom/android/AdapterView;->t:I

    .line 199
    iput-wide v1, p0, Lcustom/android/AdapterView;->u:J

    .line 218
    iput-boolean v0, p0, Lcustom/android/AdapterView;->x:Z

    .line 222
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 225
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput v0, p0, Lcustom/android/AdapterView;->f:I

    .line 80
    iput-wide v1, p0, Lcustom/android/AdapterView;->h:J

    .line 90
    iput-boolean v0, p0, Lcustom/android/AdapterView;->i:Z

    .line 122
    iput-boolean v0, p0, Lcustom/android/AdapterView;->k:Z

    .line 148
    iput v3, p0, Lcustom/android/AdapterView;->n:I

    .line 153
    iput-wide v1, p0, Lcustom/android/AdapterView;->o:J

    .line 158
    iput v3, p0, Lcustom/android/AdapterView;->p:I

    .line 163
    iput-wide v1, p0, Lcustom/android/AdapterView;->q:J

    .line 194
    iput v3, p0, Lcustom/android/AdapterView;->t:I

    .line 199
    iput-wide v1, p0, Lcustom/android/AdapterView;->u:J

    .line 218
    iput-boolean v0, p0, Lcustom/android/AdapterView;->x:Z

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, -0x1

    const-wide/high16 v1, -0x8000

    const/4 v0, 0x0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput v0, p0, Lcustom/android/AdapterView;->f:I

    .line 80
    iput-wide v1, p0, Lcustom/android/AdapterView;->h:J

    .line 90
    iput-boolean v0, p0, Lcustom/android/AdapterView;->i:Z

    .line 122
    iput-boolean v0, p0, Lcustom/android/AdapterView;->k:Z

    .line 148
    iput v3, p0, Lcustom/android/AdapterView;->n:I

    .line 153
    iput-wide v1, p0, Lcustom/android/AdapterView;->o:J

    .line 158
    iput v3, p0, Lcustom/android/AdapterView;->p:I

    .line 163
    iput-wide v1, p0, Lcustom/android/AdapterView;->q:J

    .line 194
    iput v3, p0, Lcustom/android/AdapterView;->t:I

    .line 199
    iput-wide v1, p0, Lcustom/android/AdapterView;->u:J

    .line 218
    iput-boolean v0, p0, Lcustom/android/AdapterView;->x:Z

    .line 230
    return-void
.end method

.method static synthetic a(Lcustom/android/AdapterView;)Landroid/os/Parcelable;
    .locals 1
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0}, Lcustom/android/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    .line 870
    iget-object v0, p0, Lcustom/android/AdapterView;->b:Lcustom/android/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 881
    :goto_0
    return-void

    .line 873
    :cond_0
    invoke-virtual {p0}, Lcustom/android/AdapterView;->i()I

    move-result v0

    .line 874
    if-ltz v0, :cond_1

    .line 875
    invoke-virtual {p0}, Lcustom/android/AdapterView;->f()Landroid/view/View;

    .line 876
    iget-object v1, p0, Lcustom/android/AdapterView;->b:Lcustom/android/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcustom/android/AdapterView$OnItemSelectedListener;->a(J)V

    goto :goto_0

    .line 879
    :cond_1
    iget-object v0, p0, Lcustom/android/AdapterView;->b:Lcustom/android/AdapterView$OnItemSelectedListener;

    invoke-interface {v0}, Lcustom/android/AdapterView$OnItemSelectedListener;->a()V

    goto :goto_0
.end method

.method static synthetic a(Lcustom/android/AdapterView;Landroid/os/Parcelable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 47
    invoke-virtual {p0, p1}, Lcustom/android/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method private a(Z)V
    .locals 6
    .parameter

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 712
    if-eqz p1, :cond_2

    .line 717
    iget-object v0, p0, Lcustom/android/AdapterView;->d:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcustom/android/AdapterView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 719
    invoke-virtual {p0, v2}, Lcustom/android/AdapterView;->setVisibility(I)V

    .line 728
    :goto_0
    iget-boolean v0, p0, Lcustom/android/AdapterView;->m:Z

    if-eqz v0, :cond_0

    .line 729
    invoke-virtual {p0}, Lcustom/android/AdapterView;->getLeft()I

    move-result v2

    invoke-virtual {p0}, Lcustom/android/AdapterView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Lcustom/android/AdapterView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcustom/android/AdapterView;->getBottom()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcustom/android/AdapterView;->onLayout(ZIIII)V

    .line 735
    :cond_0
    :goto_1
    return-void

    .line 722
    :cond_1
    invoke-virtual {p0, v1}, Lcustom/android/AdapterView;->setVisibility(I)V

    goto :goto_0

    .line 732
    :cond_2
    iget-object v0, p0, Lcustom/android/AdapterView;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcustom/android/AdapterView;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 733
    :cond_3
    invoke-virtual {p0, v1}, Lcustom/android/AdapterView;->setVisibility(I)V

    goto :goto_1
.end method

.method private b()I
    .locals 15

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    .line 997
    iget v9, p0, Lcustom/android/AdapterView;->r:I

    .line 999
    if-nez v9, :cond_0

    move v5, v6

    .line 1072
    :goto_0
    return v5

    .line 1003
    :cond_0
    iget-wide v10, p0, Lcustom/android/AdapterView;->h:J

    .line 1004
    iget v0, p0, Lcustom/android/AdapterView;->g:I

    .line 1007
    const-wide/high16 v3, -0x8000

    cmp-long v3, v10, v3

    if-nez v3, :cond_1

    move v5, v6

    .line 1008
    goto :goto_0

    .line 1012
    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1013
    add-int/lit8 v3, v9, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1015
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const-wide/16 v7, 0x64

    add-long v12, v3, v7

    .line 1036
    invoke-virtual {p0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v14

    .line 1037
    if-nez v14, :cond_b

    move v5, v6

    .line 1038
    goto :goto_0

    .line 1048
    :cond_2
    add-int/lit8 v7, v9, -0x1

    if-ne v3, v7, :cond_6

    move v8, v2

    .line 1049
    :goto_1
    if-nez v4, :cond_7

    move v7, v2

    .line 1051
    :goto_2
    if-eqz v8, :cond_3

    if-nez v7, :cond_a

    .line 1053
    :cond_3
    if-nez v7, :cond_4

    if-eqz v0, :cond_8

    if-nez v8, :cond_8

    .line 1058
    :cond_4
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v5, v0

    move v0, v1

    .line 1041
    :cond_5
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    cmp-long v7, v7, v12

    if-gtz v7, :cond_a

    .line 1042
    invoke-interface {v14, v5}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v7

    .line 1043
    cmp-long v7, v7, v10

    if-nez v7, :cond_2

    goto :goto_0

    :cond_6
    move v8, v1

    .line 1048
    goto :goto_1

    :cond_7
    move v7, v1

    .line 1049
    goto :goto_2

    .line 1062
    :cond_8
    if-nez v8, :cond_9

    if-nez v0, :cond_5

    if-nez v7, :cond_5

    .line 1064
    :cond_9
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v5, v0

    move v0, v2

    .line 1067
    goto :goto_3

    :cond_a
    move v5, v6

    .line 1072
    goto :goto_0

    :cond_b
    move v3, v0

    move v4, v0

    move v5, v0

    move v0, v1

    goto :goto_3
.end method

.method static synthetic b(Lcustom/android/AdapterView;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-direct {p0}, Lcustom/android/AdapterView;->a()V

    return-void
.end method

.method private static d(I)I
    .locals 0
    .parameter

    .prologue
    .line 1084
    return p0
.end method


# virtual methods
.method public final a(I)J
    .locals 2
    .parameter

    .prologue
    .line 749
    invoke-virtual {p0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v0

    .line 750
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v0, -0x8000

    :goto_0
    return-wide v0

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;IJ)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcustom/android/AdapterView;->c:Lcustom/android/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_0

    .line 284
    invoke-virtual {p0, v0}, Lcustom/android/AdapterView;->playSoundEffect(I)V

    .line 285
    iget-object v0, p0, Lcustom/android/AdapterView;->c:Lcustom/android/AdapterView$OnItemClickListener;

    invoke-interface {v0}, Lcustom/android/AdapterView$OnItemClickListener;->a()V

    .line 286
    const/4 v0, 0x1

    .line 289
    :cond_0
    return v0
.end method

.method public addView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 437
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 450
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 479
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 464
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(Landroid/view/View;)I
    .locals 4
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 583
    .line 586
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    move-object p1, v0

    .line 587
    goto :goto_0

    .line 591
    :catch_0
    move-exception v0

    move v0, v1

    .line 603
    :goto_1
    return v0

    .line 595
    :cond_0
    invoke-virtual {p0}, Lcustom/android/AdapterView;->getChildCount()I

    move-result v2

    .line 596
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_2

    .line 597
    invoke-virtual {p0, v0}, Lcustom/android/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 598
    iget v1, p0, Lcustom/android/AdapterView;->f:I

    add-int/2addr v0, v1

    goto :goto_1

    .line 596
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v0, v1

    .line 603
    goto :goto_1
.end method

.method b(I)V
    .locals 2
    .parameter

    .prologue
    .line 1092
    iput p1, p0, Lcustom/android/AdapterView;->p:I

    .line 1093
    invoke-virtual {p0, p1}, Lcustom/android/AdapterView;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcustom/android/AdapterView;->q:J

    .line 1094
    return-void
.end method

.method final c(I)V
    .locals 2
    .parameter

    .prologue
    .line 1102
    iput p1, p0, Lcustom/android/AdapterView;->n:I

    .line 1103
    invoke-virtual {p0, p1}, Lcustom/android/AdapterView;->a(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcustom/android/AdapterView;->o:J

    .line 1105
    iget-boolean v0, p0, Lcustom/android/AdapterView;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcustom/android/AdapterView;->j:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1106
    iput p1, p0, Lcustom/android/AdapterView;->g:I

    .line 1107
    iget-wide v0, p0, Lcustom/android/AdapterView;->o:J

    iput-wide v0, p0, Lcustom/android/AdapterView;->h:J

    .line 1109
    :cond_0
    return-void
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 914
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcustom/android/AdapterView;->r:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter

    .prologue
    .line 885
    const/4 v0, 0x0

    .line 890
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 891
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 896
    :cond_0
    invoke-virtual {p0}, Lcustom/android/AdapterView;->f()Landroid/view/View;

    move-result-object v1

    .line 897
    if-eqz v1, :cond_1

    .line 898
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    .line 901
    :cond_1
    if-nez v0, :cond_3

    .line 902
    if-eqz v1, :cond_2

    .line 903
    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 905
    :cond_2
    invoke-virtual {p0}, Lcustom/android/AdapterView;->g()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 906
    invoke-virtual {p0}, Lcustom/android/AdapterView;->i()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 909
    :cond_3
    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 772
    invoke-virtual {p0, p1}, Lcustom/android/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 773
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 764
    invoke-virtual {p0, p1}, Lcustom/android/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 765
    return-void
.end method

.method public abstract f()Landroid/view/View;
.end method

.method public g()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 570
    iget v0, p0, Lcustom/android/AdapterView;->r:I

    return v0
.end method

.method public abstract h()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final i()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 531
    iget v0, p0, Lcustom/android/AdapterView;->n:I

    return v0
.end method

.method public final j()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 540
    iget-wide v0, p0, Lcustom/android/AdapterView;->o:J

    return-wide v0
.end method

.method final k()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 693
    invoke-virtual {p0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v4

    .line 694
    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    move v0, v1

    .line 695
    :goto_0
    if-nez v0, :cond_5

    move v3, v1

    .line 699
    :goto_1
    if-eqz v3, :cond_6

    iget-boolean v0, p0, Lcustom/android/AdapterView;->v:Z

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 700
    if-eqz v3, :cond_7

    iget-boolean v0, p0, Lcustom/android/AdapterView;->e:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 701
    iget-object v0, p0, Lcustom/android/AdapterView;->d:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 702
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v2, v1

    :cond_2
    invoke-direct {p0, v2}, Lcustom/android/AdapterView;->a(Z)V

    .line 704
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 694
    goto :goto_0

    :cond_5
    move v3, v2

    .line 695
    goto :goto_1

    :cond_6
    move v0, v2

    .line 699
    goto :goto_2

    :cond_7
    move v0, v2

    .line 700
    goto :goto_3
.end method

.method l()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lcustom/android/AdapterView;->b:Lcustom/android/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_1

    .line 849
    iget-boolean v0, p0, Lcustom/android/AdapterView;->k:Z

    if-eqz v0, :cond_3

    .line 854
    iget-object v0, p0, Lcustom/android/AdapterView;->w:Lcustom/android/AdapterView$SelectionNotifier;

    if-nez v0, :cond_0

    .line 855
    new-instance v0, Lcustom/android/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcustom/android/AdapterView$SelectionNotifier;-><init>(Lcustom/android/AdapterView;B)V

    iput-object v0, p0, Lcustom/android/AdapterView;->w:Lcustom/android/AdapterView$SelectionNotifier;

    .line 857
    :cond_0
    iget-object v0, p0, Lcustom/android/AdapterView;->w:Lcustom/android/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcustom/android/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 864
    :cond_1
    :goto_0
    iget v0, p0, Lcustom/android/AdapterView;->p:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcustom/android/AdapterView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcustom/android/AdapterView;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 865
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcustom/android/AdapterView;->sendAccessibilityEvent(I)V

    .line 867
    :cond_2
    return-void

    .line 859
    :cond_3
    invoke-direct {p0}, Lcustom/android/AdapterView;->a()V

    goto :goto_0
.end method

.method final m()V
    .locals 8

    .prologue
    const-wide/high16 v6, -0x8000

    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v1, 0x0

    .line 918
    iget v4, p0, Lcustom/android/AdapterView;->r:I

    .line 921
    if-lez v4, :cond_6

    .line 926
    iget-boolean v0, p0, Lcustom/android/AdapterView;->i:Z

    if-eqz v0, :cond_5

    .line 929
    iput-boolean v1, p0, Lcustom/android/AdapterView;->i:Z

    .line 933
    invoke-direct {p0}, Lcustom/android/AdapterView;->b()I

    move-result v0

    .line 934
    if-ltz v0, :cond_5

    .line 936
    invoke-static {v0}, Lcustom/android/AdapterView;->d(I)I

    move-result v3

    .line 937
    if-ne v3, v0, :cond_5

    .line 939
    invoke-virtual {p0, v0}, Lcustom/android/AdapterView;->c(I)V

    move v3, v2

    .line 944
    :goto_0
    if-nez v3, :cond_3

    .line 946
    invoke-virtual {p0}, Lcustom/android/AdapterView;->i()I

    move-result v0

    .line 949
    if-lt v0, v4, :cond_0

    .line 950
    add-int/lit8 v0, v4, -0x1

    .line 952
    :cond_0
    if-gez v0, :cond_1

    move v0, v1

    .line 957
    :cond_1
    invoke-static {v0}, Lcustom/android/AdapterView;->d(I)I

    move-result v4

    .line 958
    if-gez v4, :cond_4

    .line 960
    invoke-static {v0}, Lcustom/android/AdapterView;->d(I)I

    move-result v0

    .line 962
    :goto_1
    if-ltz v0, :cond_3

    .line 963
    invoke-virtual {p0, v0}, Lcustom/android/AdapterView;->c(I)V

    .line 964
    invoke-virtual {p0}, Lcustom/android/AdapterView;->n()V

    move v0, v2

    .line 969
    :goto_2
    if-nez v0, :cond_2

    .line 971
    iput v5, p0, Lcustom/android/AdapterView;->p:I

    .line 972
    iput-wide v6, p0, Lcustom/android/AdapterView;->q:J

    .line 973
    iput v5, p0, Lcustom/android/AdapterView;->n:I

    .line 974
    iput-wide v6, p0, Lcustom/android/AdapterView;->o:J

    .line 975
    iput-boolean v1, p0, Lcustom/android/AdapterView;->i:Z

    .line 976
    invoke-virtual {p0}, Lcustom/android/AdapterView;->n()V

    .line 978
    :cond_2
    return-void

    :cond_3
    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v4

    goto :goto_1

    :cond_5
    move v3, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2
.end method

.method final n()V
    .locals 4

    .prologue
    .line 981
    iget v0, p0, Lcustom/android/AdapterView;->p:I

    iget v1, p0, Lcustom/android/AdapterView;->t:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcustom/android/AdapterView;->q:J

    iget-wide v2, p0, Lcustom/android/AdapterView;->u:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 982
    :cond_0
    invoke-virtual {p0}, Lcustom/android/AdapterView;->l()V

    .line 983
    iget v0, p0, Lcustom/android/AdapterView;->p:I

    iput v0, p0, Lcustom/android/AdapterView;->t:I

    .line 984
    iget-wide v0, p0, Lcustom/android/AdapterView;->q:J

    iput-wide v0, p0, Lcustom/android/AdapterView;->u:J

    .line 986
    :cond_1
    return-void
.end method

.method final o()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1117
    invoke-virtual {p0}, Lcustom/android/AdapterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1118
    iput-boolean v4, p0, Lcustom/android/AdapterView;->i:Z

    .line 1119
    iget v0, p0, Lcustom/android/AdapterView;->a:I

    .line 1120
    iget v0, p0, Lcustom/android/AdapterView;->p:I

    if-ltz v0, :cond_2

    .line 1122
    iget v0, p0, Lcustom/android/AdapterView;->p:I

    iget v1, p0, Lcustom/android/AdapterView;->f:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcustom/android/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1123
    iget-wide v1, p0, Lcustom/android/AdapterView;->o:J

    iput-wide v1, p0, Lcustom/android/AdapterView;->h:J

    .line 1124
    iget v1, p0, Lcustom/android/AdapterView;->n:I

    iput v1, p0, Lcustom/android/AdapterView;->g:I

    .line 1125
    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 1128
    :cond_0
    iput v3, p0, Lcustom/android/AdapterView;->j:I

    .line 1145
    :cond_1
    :goto_0
    return-void

    .line 1131
    :cond_2
    invoke-virtual {p0, v3}, Lcustom/android/AdapterView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1132
    invoke-virtual {p0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v1

    .line 1133
    iget v2, p0, Lcustom/android/AdapterView;->f:I

    if-ltz v2, :cond_4

    iget v2, p0, Lcustom/android/AdapterView;->f:I

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1134
    iget v2, p0, Lcustom/android/AdapterView;->f:I

    invoke-interface {v1, v2}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcustom/android/AdapterView;->h:J

    .line 1138
    :goto_1
    iget v1, p0, Lcustom/android/AdapterView;->f:I

    iput v1, p0, Lcustom/android/AdapterView;->g:I

    .line 1139
    if-eqz v0, :cond_3

    .line 1140
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 1142
    :cond_3
    iput v4, p0, Lcustom/android/AdapterView;->j:I

    goto :goto_0

    .line 1136
    :cond_4
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcustom/android/AdapterView;->h:J

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 828
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 829
    iget-object v0, p0, Lcustom/android/AdapterView;->w:Lcustom/android/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcustom/android/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 830
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 520
    invoke-virtual {p0}, Lcustom/android/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcustom/android/AdapterView;->a:I

    .line 521
    return-void
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 515
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 492
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .parameter

    .prologue
    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract setAdapter(Landroid/widget/Adapter;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 638
    iput-object p1, p0, Lcustom/android/AdapterView;->d:Landroid/view/View;

    .line 640
    invoke-virtual {p0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v0

    .line 641
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 642
    :goto_0
    invoke-direct {p0, v0}, Lcustom/android/AdapterView;->a(Z)V

    .line 643
    return-void

    .line 641
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 668
    invoke-virtual {p0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v0

    .line 669
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 671
    :goto_0
    iput-boolean p1, p0, Lcustom/android/AdapterView;->e:Z

    .line 672
    if-nez p1, :cond_1

    .line 673
    iput-boolean v1, p0, Lcustom/android/AdapterView;->v:Z

    .line 676
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 677
    return-void

    :cond_2
    move v0, v1

    .line 669
    goto :goto_0

    :cond_3
    move v2, v1

    .line 676
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 681
    invoke-virtual {p0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v0

    .line 682
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move v0, v2

    .line 684
    :goto_0
    iput-boolean p1, p0, Lcustom/android/AdapterView;->v:Z

    .line 685
    if-eqz p1, :cond_1

    .line 686
    iput-boolean v2, p0, Lcustom/android/AdapterView;->e:Z

    .line 689
    :cond_1
    if-eqz p1, :cond_3

    if-nez v0, :cond_3

    :goto_1
    invoke-super {p0, v2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 690
    return-void

    :cond_2
    move v0, v1

    .line 682
    goto :goto_0

    :cond_3
    move v2, v1

    .line 689
    goto :goto_1
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter

    .prologue
    .line 755
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setOnItemClickListener(Lcustom/android/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcustom/android/AdapterView;->c:Lcustom/android/AdapterView$OnItemClickListener;

    .line 263
    return-void
.end method

.method public setOnItemLongClickListener(Lcustom/android/AdapterView$OnItemLongClickListener;)V
    .locals 1
    .parameter

    .prologue
    .line 322
    invoke-virtual {p0}, Lcustom/android/AdapterView;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcustom/android/AdapterView;->setLongClickable(Z)V

    .line 325
    :cond_0
    iput-object p1, p0, Lcustom/android/AdapterView;->l:Lcustom/android/AdapterView$OnItemLongClickListener;

    .line 326
    return-void
.end method

.method public setOnItemSelectedListener(Lcustom/android/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcustom/android/AdapterView;->b:Lcustom/android/AdapterView$OnItemSelectedListener;

    .line 374
    return-void
.end method

.method public abstract setSelection(I)V
.end method
