.class Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;
.super Ljava/lang/Object;
.source "NotificationEnabledPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/prefs/NotificationEnabledPreference;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/NotificationEnabledPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;->a:Lcom/facebook/orca/prefs/NotificationEnabledPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/prefs/NotificationEnabledPreference$1;->a:Lcom/facebook/orca/prefs/NotificationEnabledPreference;

    invoke-static {v0, p1, p2}, Lcom/facebook/orca/prefs/NotificationEnabledPreference;->a(Lcom/facebook/orca/prefs/NotificationEnabledPreference;Landroid/content/DialogInterface;I)V

    .line 75
    return-void
.end method
