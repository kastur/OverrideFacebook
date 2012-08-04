.class public interface abstract Lcom/facebook/orca/common/ui/titlebar/FbTitleBar;
.super Ljava/lang/Object;
.source "FbTitleBar.java"


# virtual methods
.method public abstract a(Z)V
.end method

.method public abstract a()Z
.end method

.method public abstract b(Z)V
.end method

.method public abstract setButtonSpecs(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/orca/common/ui/titlebar/TitleBarButtonSpec;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setCustomTitleView(Landroid/view/View;)V
.end method

.method public abstract setHasProgressBar(Z)V
.end method

.method public abstract setOnToolbarButtonListener(Lcom/facebook/orca/common/ui/titlebar/TitleBar$OnToolbarButtonListener;)V
.end method

.method public abstract setQuickActionMenuListener(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
