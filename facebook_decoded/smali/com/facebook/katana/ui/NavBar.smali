.class public Lcom/facebook/katana/ui/NavBar;
.super Landroid/widget/LinearLayout;
.source "NavBar.java"


# instance fields
.field private a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

.field private b:Lcom/facebook/katana/ui/NavBar$ListenState;

.field private c:F

.field private d:F

.field private e:F

.field private f:[F

.field private g:I

.field private h:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    sget-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->MONITORING:Lcom/facebook/katana/ui/NavBar$ListenState;

    iput-object v0, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    .line 50
    const/4 v0, 0x6

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/facebook/katana/ui/NavBar;->f:[F

    .line 51
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    const/high16 v6, 0x4170

    const/4 v5, 0x0

    .line 68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 106
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    sget-object v2, Lcom/facebook/katana/ui/NavBar$ListenState;->INTERCEPTING:Lcom/facebook/katana/ui/NavBar$ListenState;

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 73
    :pswitch_0
    sget-object v3, Lcom/facebook/katana/ui/NavBar$ListenState;->MONITORING:Lcom/facebook/katana/ui/NavBar$ListenState;

    iput-object v3, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    .line 74
    iput v0, p0, Lcom/facebook/katana/ui/NavBar;->c:F

    .line 75
    iput v2, p0, Lcom/facebook/katana/ui/NavBar;->d:F

    .line 77
    iget v0, p0, Lcom/facebook/katana/ui/NavBar;->c:F

    iget-object v2, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->q()I

    move-result v2

    add-int/lit8 v2, v2, -0x64

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 78
    sget-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->DEFERRING:Lcom/facebook/katana/ui/NavBar$ListenState;

    iput-object v0, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    goto :goto_0

    .line 82
    :pswitch_1
    iget-object v3, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    sget-object v4, Lcom/facebook/katana/ui/NavBar$ListenState;->MONITORING:Lcom/facebook/katana/ui/NavBar$ListenState;

    if-ne v3, v4, :cond_0

    .line 83
    iget v3, p0, Lcom/facebook/katana/ui/NavBar;->c:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 84
    iget v4, p0, Lcom/facebook/katana/ui/NavBar;->d:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 86
    cmpl-float v4, v2, v6

    if-lez v4, :cond_2

    .line 87
    sget-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->DEFERRING:Lcom/facebook/katana/ui/NavBar$ListenState;

    iput-object v0, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    goto :goto_0

    .line 88
    :cond_2
    cmpl-float v2, v3, v2

    if-lez v2, :cond_0

    add-float/2addr v0, v6

    iget v2, p0, Lcom/facebook/katana/ui/NavBar;->c:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 89
    sget-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->INTERCEPTING:Lcom/facebook/katana/ui/NavBar$ListenState;

    iput-object v0, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    .line 90
    iget v0, p0, Lcom/facebook/katana/ui/NavBar;->c:F

    iput v0, p0, Lcom/facebook/katana/ui/NavBar;->e:F

    .line 91
    iput v5, p0, Lcom/facebook/katana/ui/NavBar;->h:F

    move v0, v1

    .line 92
    :goto_1
    iget-object v2, p0, Lcom/facebook/katana/ui/NavBar;->f:[F

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    iget-object v2, p0, Lcom/facebook/katana/ui/NavBar;->f:[F

    aput v5, v2, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 100
    :pswitch_2
    iget-object v0, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    sget-object v2, Lcom/facebook/katana/ui/NavBar$ListenState;->INTERCEPTING:Lcom/facebook/katana/ui/NavBar$ListenState;

    if-eq v0, v2, :cond_0

    .line 101
    sget-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->MONITORING:Lcom/facebook/katana/ui/NavBar$ListenState;

    iput-object v0, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 114
    iget-object v2, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    sget-object v3, Lcom/facebook/katana/ui/NavBar$ListenState;->INTERCEPTING:Lcom/facebook/katana/ui/NavBar$ListenState;

    if-eq v2, v3, :cond_0

    .line 157
    :goto_0
    return v0

    .line 118
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    move v0, v1

    .line 157
    goto :goto_0

    .line 120
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 122
    iget-object v3, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iget-object v4, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v4}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->q()I

    move-result v4

    iget-object v5, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v5}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v2

    iget v6, p0, Lcom/facebook/katana/ui/NavBar;->e:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->d(I)V

    .line 131
    iget v0, p0, Lcom/facebook/katana/ui/NavBar;->e:F

    sub-float v0, v2, v0

    .line 132
    iput v2, p0, Lcom/facebook/katana/ui/NavBar;->e:F

    .line 134
    iget v2, p0, Lcom/facebook/katana/ui/NavBar;->h:F

    iget-object v3, p0, Lcom/facebook/katana/ui/NavBar;->f:[F

    iget v4, p0, Lcom/facebook/katana/ui/NavBar;->g:I

    aget v3, v3, v4

    sub-float v3, v0, v3

    add-float/2addr v2, v3

    iput v2, p0, Lcom/facebook/katana/ui/NavBar;->h:F

    .line 135
    iget-object v2, p0, Lcom/facebook/katana/ui/NavBar;->f:[F

    iget v3, p0, Lcom/facebook/katana/ui/NavBar;->g:I

    aput v0, v2, v3

    .line 136
    iget v0, p0, Lcom/facebook/katana/ui/NavBar;->g:I

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lcom/facebook/katana/ui/NavBar;->f:[F

    array-length v2, v2

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/facebook/katana/ui/NavBar;->g:I

    goto :goto_1

    .line 142
    :pswitch_1
    iget-object v0, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r()I

    move-result v0

    int-to-double v2, v0

    iget-object v0, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->q()I

    move-result v0

    int-to-double v4, v0

    const-wide/high16 v6, 0x3ff8

    div-double/2addr v4, v6

    cmpg-double v0, v2, v4

    if-gez v0, :cond_1

    iget v0, p0, Lcom/facebook/katana/ui/NavBar;->h:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iget-object v2, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->r()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(ZF)V

    .line 153
    :goto_2
    sget-object v0, Lcom/facebook/katana/ui/NavBar$ListenState;->MONITORING:Lcom/facebook/katana/ui/NavBar$ListenState;

    iput-object v0, p0, Lcom/facebook/katana/ui/NavBar;->b:Lcom/facebook/katana/ui/NavBar$ListenState;

    goto :goto_1

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->s()V

    goto :goto_2

    .line 118
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setFacebookActivityDelegate(Lcom/facebook/katana/activity/FacebookActivityDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/facebook/katana/ui/NavBar;->a:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    .line 61
    return-void
.end method
