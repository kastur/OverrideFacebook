.class Lcom/facebook/katana/SettingsActivity$8;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/FB4AVersion;

.field private synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/facebook/katana/SettingsActivity;Lcom/facebook/katana/FB4AVersion;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p2, p0, Lcom/facebook/katana/SettingsActivity$8;->a:Lcom/facebook/katana/FB4AVersion;

    iput-object p3, p0, Lcom/facebook/katana/SettingsActivity$8;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 510
    iget-object v0, p0, Lcom/facebook/katana/SettingsActivity$8;->a:Lcom/facebook/katana/FB4AVersion;

    iget-object v1, p0, Lcom/facebook/katana/SettingsActivity$8;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/facebook/katana/FB4AVersion;->c(Landroid/content/Context;)J

    .line 514
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Forcing Upgrade"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method
