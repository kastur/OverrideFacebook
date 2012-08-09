.class Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$2;
.super Ljava/lang/Object;
.source "ThreadAlertRateLimitView.java"

# interfaces
.implements Lcom/facebook/orca/prefs/OrcaSharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$2;->a:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/prefs/PrefKey;)V
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView$2;->a:Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;->a(Lcom/facebook/orca/threadview/ThreadAlertRateLimitView;Lcom/facebook/orca/prefs/PrefKey;)V

    .line 85
    return-void
.end method
