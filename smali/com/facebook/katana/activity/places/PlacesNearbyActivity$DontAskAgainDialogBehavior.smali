.class Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;
.super Ljava/lang/Object;
.source "PlacesNearbyActivity.java"


# instance fields
.field final synthetic a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Landroid/widget/Checkable;

.field private e:Landroid/content/DialogInterface$OnCancelListener;

.field private f:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1237
    iput-object p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->a:Lcom/facebook/katana/activity/places/PlacesNearbyActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1215
    new-instance v0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$1;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$1;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->e:Landroid/content/DialogInterface$OnCancelListener;

    .line 1223
    new-instance v0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$2;

    invoke-direct {v0, p0}, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior$2;-><init>(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)V

    iput-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->f:Landroid/content/DialogInterface$OnDismissListener;

    .line 1238
    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->b:Ljava/lang/String;

    .line 1239
    return-void
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)Z
    .locals 1
    .parameter

    .prologue
    .line 1210
    iget-boolean v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->c:Z

    return v0
.end method

.method static synthetic a(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1210
    iput-boolean p1, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->c:Z

    return p1
.end method

.method static synthetic b(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;)Landroid/widget/Checkable;
    .locals 1
    .parameter

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->d:Landroid/widget/Checkable;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/app/Dialog;Landroid/widget/Checkable;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1242
    iput-object p2, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->d:Landroid/widget/Checkable;

    .line 1243
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->e:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1244
    iget-object v0, p0, Lcom/facebook/katana/activity/places/PlacesNearbyActivity$DontAskAgainDialogBehavior;->f:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1245
    return-void
.end method
