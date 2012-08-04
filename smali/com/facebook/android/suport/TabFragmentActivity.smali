.class public Lcom/facebook/android/suport/TabFragmentActivity;
.super Lcom/facebook/android/suport/FragmentActivityGroup;
.source "TabFragmentActivity.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private e:Landroid/widget/TabHost;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/facebook/android/suport/FragmentActivityGroup;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->f:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->g:I

    .line 64
    return-void
.end method

.method private i()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    .line 144
    sget v0, Lcom/facebook/orca/lib_support/R$layout;->tab_content:I

    invoke-virtual {p0, v0}, Lcom/facebook/android/suport/TabFragmentActivity;->setContentView(I)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method public final h()Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->i()V

    .line 167
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 155
    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0}, Lcom/facebook/android/suport/FragmentActivityGroup;->onContentChanged()V

    .line 132
    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/facebook/android/suport/TabFragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    .line 134
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->g()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setup(Landroid/app/LocalActivityManager;)V

    .line 140
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/facebook/android/suport/FragmentActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->i()V

    .line 109
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 112
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/facebook/android/suport/FragmentActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lcom/facebook/android/suport/TabFragmentActivity;->i()V

    .line 90
    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v1, v0}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v0

    if-gez v0, :cond_1

    .line 95
    iget v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->g:I

    if-ltz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    iget v1, p0, Lcom/facebook/android/suport/TabFragmentActivity;->g:I

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 101
    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 116
    invoke-super {p0, p1}, Lcom/facebook/android/suport/FragmentActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    iget-object v0, p0, Lcom/facebook/android/suport/TabFragmentActivity;->e:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    .line 118
    if-eqz v0, :cond_0

    .line 119
    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    return-void
.end method
