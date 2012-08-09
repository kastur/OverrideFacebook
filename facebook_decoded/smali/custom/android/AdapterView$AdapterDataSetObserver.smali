.class Lcustom/android/AdapterView$AdapterDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "AdapterView.java"


# instance fields
.field private a:Landroid/os/Parcelable;

.field private synthetic b:Lcustom/android/AdapterView;


# direct methods
.method constructor <init>(Lcustom/android/AdapterView;)V
    .locals 1
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 777
    const/4 v0, 0x0

    iput-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcustom/android/AdapterView;->m:Z

    .line 782
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iget-object v1, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iget v1, v1, Lcustom/android/AdapterView;->r:I

    iput v1, v0, Lcustom/android/AdapterView;->s:I

    .line 783
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iget-object v1, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-virtual {v1}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    iput v1, v0, Lcustom/android/AdapterView;->r:I

    .line 787
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-virtual {v0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iget v0, v0, Lcustom/android/AdapterView;->s:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iget v0, v0, Lcustom/android/AdapterView;->r:I

    if-lez v0, :cond_0

    .line 789
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iget-object v1, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcustom/android/AdapterView;->a(Lcustom/android/AdapterView;Landroid/os/Parcelable;)V

    .line 790
    const/4 v0, 0x0

    iput-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    .line 794
    :goto_0
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-virtual {v0}, Lcustom/android/AdapterView;->k()V

    .line 795
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-virtual {v0}, Lcustom/android/AdapterView;->requestLayout()V

    .line 796
    return-void

    .line 792
    :cond_0
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-virtual {v0}, Lcustom/android/AdapterView;->o()V

    goto :goto_0
.end method

.method public onInvalidated()V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 800
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcustom/android/AdapterView;->m:Z

    .line 802
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-virtual {v0}, Lcustom/android/AdapterView;->h()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-static {v0}, Lcustom/android/AdapterView;->a(Lcustom/android/AdapterView;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->a:Landroid/os/Parcelable;

    .line 809
    :cond_0
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iget-object v1, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iget v1, v1, Lcustom/android/AdapterView;->r:I

    iput v1, v0, Lcustom/android/AdapterView;->s:I

    .line 810
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iput v3, v0, Lcustom/android/AdapterView;->r:I

    .line 811
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iput v2, v0, Lcustom/android/AdapterView;->p:I

    .line 812
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iput-wide v4, v0, Lcustom/android/AdapterView;->q:J

    .line 813
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iput v2, v0, Lcustom/android/AdapterView;->n:I

    .line 814
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iput-wide v4, v0, Lcustom/android/AdapterView;->o:J

    .line 815
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    iput-boolean v3, v0, Lcustom/android/AdapterView;->i:Z

    .line 817
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-virtual {v0}, Lcustom/android/AdapterView;->k()V

    .line 818
    iget-object v0, p0, Lcustom/android/AdapterView$AdapterDataSetObserver;->b:Lcustom/android/AdapterView;

    invoke-virtual {v0}, Lcustom/android/AdapterView;->requestLayout()V

    .line 819
    return-void
.end method
