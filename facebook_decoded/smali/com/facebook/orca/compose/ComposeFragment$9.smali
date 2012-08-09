.class Lcom/facebook/orca/compose/ComposeFragment$9;
.super Ljava/lang/Object;
.source "ComposeFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/compose/ComposeFragment;


# direct methods
.method constructor <init>(Lcom/facebook/orca/compose/ComposeFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/facebook/orca/compose/ComposeFragment$9;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 638
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$9;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment;->i(Lcom/facebook/orca/compose/ComposeFragment;)Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 639
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->u:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Z)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 640
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 641
    iget-object v0, p0, Lcom/facebook/orca/compose/ComposeFragment$9;->a:Lcom/facebook/orca/compose/ComposeFragment;

    invoke-static {v0}, Lcom/facebook/orca/compose/ComposeFragment;->e(Lcom/facebook/orca/compose/ComposeFragment;)V

    .line 642
    return-void
.end method
