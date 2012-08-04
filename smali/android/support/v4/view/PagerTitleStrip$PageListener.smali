.class Landroid/support/v4/view/PagerTitleStrip$PageListener;
.super Landroid/database/DataSetObserver;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# instance fields
.field private a:I

.field private synthetic b:Landroid/support/v4/view/PagerTitleStrip;


# direct methods
.method private constructor <init>(Landroid/support/v4/view/PagerTitleStrip;)V
    .locals 0
    .parameter

    .prologue
    .line 291
    iput-object p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->b:Landroid/support/v4/view/PagerTitleStrip;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/PagerTitleStrip;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 291
    invoke-direct {p0, p1}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 306
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->a:I

    if-nez v0, :cond_0

    .line 308
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->b:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->b:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->b:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/PagerAdapter;)V

    .line 310
    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 0
    .parameter

    .prologue
    .line 314
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->a:I

    .line 315
    return-void
.end method

.method public final a(IF)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 297
    const/high16 v0, 0x3f00

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 299
    add-int/lit8 p1, p1, 0x1

    .line 301
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->b:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(IF)V

    .line 302
    return-void
.end method

.method public final a(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->b:Landroid/support/v4/view/PagerTitleStrip;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/view/PagerTitleStrip;->a(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 320
    return-void
.end method

.method public onChanged()V
    .locals 3

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->b:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->b:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v1, v1, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I

    move-result v1

    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip$PageListener;->b:Landroid/support/v4/view/PagerTitleStrip;

    iget-object v2, v2, Landroid/support/v4/view/PagerTitleStrip;->a:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->a()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->a(ILandroid/support/v4/view/PagerAdapter;)V

    .line 325
    return-void
.end method
