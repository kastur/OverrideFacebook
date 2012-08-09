.class Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$2;
.super Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;
.source "GlobalNotificationPrefsSynchronizer.java"


# instance fields
.field private synthetic a:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$2;->a:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-direct {p0}, Lcom/facebook/orca/ops/OrcaServiceOperation$OnCompletedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/ops/ServiceException;)V
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$2;->a:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-static {v0, p1}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;Ljava/lang/Exception;)V

    .line 75
    return-void
.end method

.method public final a(Lcom/facebook/orca/server/OperationResult;)V
    .locals 1
    .parameter

    .prologue
    .line 69
    iget-object v0, p0, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer$2;->a:Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;

    invoke-static {v0}, Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;->a(Lcom/facebook/orca/prefs/GlobalNotificationPrefsSynchronizer;)V

    .line 70
    return-void
.end method
