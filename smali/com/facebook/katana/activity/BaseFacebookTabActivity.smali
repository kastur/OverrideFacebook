.class public Lcom/facebook/katana/activity/BaseFacebookTabActivity;
.super Lcom/facebook/orca/activity/FbTabFragmentActivity;
.source "BaseFacebookTabActivity.java"

# interfaces
.implements Lcom/facebook/katana/activity/FacebookActivity;
.implements Lcom/facebook/katana/activity/NavBarHost;


# instance fields
.field private e:Lcom/facebook/katana/activity/FacebookActivityDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/facebook/orca/activity/FbTabFragmentActivity;-><init>()V

    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->n()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/activity/FbActivityListener;

    .line 39
    instance-of v2, v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    if-eqz v2, :cond_0

    .line 40
    check-cast v0, Lcom/facebook/katana/activity/FacebookActivityDelegate;

    iput-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->e:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    .line 41
    return-void

    .line 44
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to find a FbActivityListener of type FacebookActivityDelegate"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final a(Ljava/lang/String;I)Landroid/widget/RadioButton;
    .locals 3
    .parameter
    .parameter
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressWarnings;
        justification = "this is excluded because we handle the case where Math.abs(MIN_VALUE) == MIN_VALUE."
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030103

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 80
    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 84
    if-gtz v1, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 87
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    .line 88
    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(I)V

    .line 90
    return-object v0
.end method

.method public a(ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(ILjava/lang/String;)V

    .line 144
    return-void
.end method

.method protected final i()V
    .locals 2

    .prologue
    .line 57
    const v0, 0x7f0802b6

    invoke-virtual {p0, v0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 58
    new-instance v1, Lcom/facebook/katana/activity/BaseFacebookTabActivity$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity$1;-><init>(Lcom/facebook/katana/activity/BaseFacebookTabActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 66
    return-void
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->c()Z

    move-result v0

    return v0
.end method

.method protected final k()V
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->h()V

    .line 160
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized m()Lcom/facebook/katana/activity/FacebookActivityDelegate;
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->e:Lcom/facebook/katana/activity/FacebookActivityDelegate;

    if-nez v0, :cond_0

    .line 31
    invoke-direct {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->o()V

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->e:Lcom/facebook/katana/activity/FacebookActivityDelegate;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/facebook/katana/activity/BaseFacebookTabActivity;->m()Lcom/facebook/katana/activity/FacebookActivityDelegate;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/katana/activity/FacebookActivityDelegate;->a(Landroid/view/View;)V

    .line 155
    return-void
.end method
