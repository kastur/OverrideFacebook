.class final Lcom/facebook/katana/features/Gatekeeper$1;
.super Ljava/util/HashMap;
.source "Gatekeeper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/facebook/katana/features/Gatekeeper$Settings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v0, "places"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v0, "vault"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_POSITIVE:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string v0, "android_beta"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_POSITIVE:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string v0, "android_ci_legal_screen"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_POSITIVE:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "android_ci_legal_bar"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_POSITIVE:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v0, "android_ci_kddi_intro_enabled"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_POSITIVE:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "android_ci_alert_enabled"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_POSITIVE:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v0, "android_continuous_import"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v0, "faceweb_android"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string v0, "android_deep_links"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const-string v0, "android_fw_ssl"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string v0, "fbandroid_faceweb_news_feed"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v0, "fbandroid_custom_camera"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v0, "fbandroid_custom_camera_shutter_sound"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_ALL:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v0, "android_disable_webcache"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v0, "new_android_ci_enabled"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v0, "new_android_ci_continuous_import_test"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v0, "new_android_ci_invite_step_enabled"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v0, "new_android_ci_skip_add_all_dialog"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v0, "android_sync_setup_flow_enabled"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "fbandroid_detailed_analytics"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_24HOURS:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_24HOURS:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v0, "fbandroid_analytics"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_24HOURS:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_24HOURS:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v0, "android_track_celltower"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_24HOURS:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_24HOURS:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v0, "new_android_ci_vs_old"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_1HOUR:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v0, "android_event_tagging"

    new-instance v1, Lcom/facebook/katana/features/Gatekeeper$Settings;

    sget-object v2, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_24HOURS:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    sget-object v3, Lcom/facebook/katana/features/Gatekeeper$CachePolicy;->CACHE_24HOURS:Lcom/facebook/katana/features/Gatekeeper$CachePolicy;

    invoke-direct {v1, v2, v3}, Lcom/facebook/katana/features/Gatekeeper$Settings;-><init>(Lcom/facebook/katana/features/Gatekeeper$CachePolicy;Lcom/facebook/katana/features/Gatekeeper$CachePolicy;)V

    invoke-virtual {p0, v0, v1}, Lcom/facebook/katana/features/Gatekeeper$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return-void
.end method
