.class Lcom/facebook/orca/compose/ComposeFragment$2;
.super Ljava/lang/Object;
.source "ComposeFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/compose/ComposeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$2;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 215
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$2;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment;->c(Lcom/facebook/orca/compose/ComposeFragment;)Lcom/facebook/orca/compose/ComposeMode;

    move-result-object v0

    sget-object v3, Lcom/facebook/orca/compose/ComposeMode;->SHRUNK:Lcom/facebook/orca/compose/ComposeMode;

    if-ne v0, v3, :cond_1

    .line 216
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$2;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment;->d(Lcom/facebook/orca/compose/ComposeFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 218
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$2;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-virtual {v0}, Lcom/facebook/orca/compose/ComposeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v3, "input_method"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 220
    iget-object v3, p0, Lcom/facebook/orca/compose/ComposeFragment$2;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v3}, Lcom/facebook/orca/compose/ComposeFragment;->d(Lcom/facebook/orca/compose/ComposeFragment;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    move v0, v1

    .line 224
    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method
