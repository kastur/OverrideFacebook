.class Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$1;
.super Ljava/lang/Object;
.source "GlobalNotificationPrefsSynchronizer.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$1;->a:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$1;->a:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-static {v0, p1}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;Lcom/facebook/orca/prefs/PrefKey;)V

    .line 62
    return-void
.end method
