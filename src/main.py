import logging

# Configure basic logging setup
logging.basicConfig(
    level=logging.INFO,
    format="%(asctime)s - %(name)s - %(levelname)s - %(message)s",
    handlers=[
        logging.StreamHandler(),
    ],
)

logger = logging.getLogger(__name__)


def main() -> None:
    logger.info("Hello World")


if __name__ == "__main__":
    main()
