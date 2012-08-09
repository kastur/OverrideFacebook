.class Lcom/facebook/katana/SettingsActivity$SettingChangedEvent;
.super Lcom/facebook/orca/analytics/HoneyClientEvent;
.source "SettingsActivity.java"


# direct methods
.method public constructor <init>(Lcom/facebook/katana/SettingsActivity;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 122
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Actions;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/facebook/orca/analytics/HoneyClientEvent;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0, p2}, Lcom/facebook/katana/SettingsActivity$SettingChangedEvent;->e(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 125
    sget-object v0, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElementsTypes;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity$SettingChangedEvent;->d(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 126
    invoke-virtual {p1}, Lcom/facebook/katana/SettingsActivity;->f_()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/katana/SettingsActivity$SettingChangedEvent;->c(Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 127
    const-string v0, "value"

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/SettingsActivity$SettingChangedEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/orca/analytics/HoneyClientEvent;

    .line 128
    return-void
.end method
