cd /svl/data/two-phase-flow/koven/gsplat
source /viscam/u/koven/mambdaforge/bin/activate
conda activate /svl/u/koven/mamba_envs/gsplat

SCRIPT_NAME=$(basename "$0" .sh)
CUDA_VISIBLE_DEVICES=0 python examples/simple_trainer.py mcmc --data_type blender --data_dir data/bubble_opaque_env --result_dir "results/${SCRIPT_NAME}"