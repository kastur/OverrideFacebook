.class Lcom/facebook/orca/prefs/LocationServicesPreference$1;
.super Ljava/lang/Object;
.source "LocationServicesPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/prefs/LocationServicesPreference;


# direct methods
.method constructor <init>(Lcom/facebook/orca/prefs/LocationServicesPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/prefs/LocationServicesPreference$1;->a:Lcom/facebook/orca/prefs/LocationServicesPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/prefs/LocationServicesPreference$1;->a:Lcom/facebook/orca/prefs/LocationServicesPreference;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/orca/prefs/LocationServicesPreference;->a(Lcom/facebook/orca/prefs/LocationServicesPreference;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 72
    return-void
.end method
